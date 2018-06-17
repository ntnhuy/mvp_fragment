package ${packageName};

import ${applicationPackage?replace(".mockup", "")}.app.bases.BasePresenter;
import ${applicationPackage?replace(".mockup", "")}.datas.DataManager;
<#if includeDB || includeRetrofit>
import ${applicationPackage?replace(".mockup", "")}.datas.rx.SchedulerProvider;
import io.reactivex.disposables.CompositeDisposable;
</#if>

import ${applicationPackage?replace(".mockup", "")}.datas.models.EventBusModel;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

import javax.inject.Inject;

/**
 * User: ntnhuy
 * Date: ${.now?string('M/dd/yy')}
 *Time: ${.now?string('h:mm a')}
 */

public class ${className?replace("Fragment", "")}Presenter extends BasePresenter<${className?replace("Fragment", "")}View> {

    @Inject
    public ${className?replace("Fragment", "")}Presenter(DataManager dataManager<#if includeDB || includeRetrofit>, SchedulerProvider schedulerProvider, CompositeDisposable compositeDisposable</#if>) {
        super(dataManager<#if includeDB || includeRetrofit>, schedulerProvider, compositeDisposable</#if>);
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(EventBusModel eventBusModel) {
        switch (eventBusModel.getBusEnum()) {

        }
    }

    public void onResume() {
        if (!EventBus.getDefault().isRegistered(this)) {
            EventBus.getDefault().register(this);
        }
    }

    public void onDestroy() {
        EventBus.getDefault().unregister(this);
    }
    
}
