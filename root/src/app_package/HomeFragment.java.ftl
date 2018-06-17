package ${packageName};

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${applicationPackage?replace(".mockup", "")}.R;
import ${applicationPackage?replace(".mockup", "")}.app.bases.BaseFragment;
import ${applicationPackage?replace(".mockup", "")}.databinding.${fragmentName?replace('_', ' ')?capitalize?replace(' ', '')}Binding;

import javax.inject.Inject;

/**
 * User: ntnhuy
 * Date: ${.now?string('M/dd/yy')}
 *Time: ${.now?string('h:mm a')}
 */

public class ${className} extends BaseFragment implements ${className?replace("Fragment", "")}View {

    @Inject
    ${className?replace("Fragment", "")}Presenter presenter;
    ${fragmentName?replace('_', ' ')?capitalize?replace(' ', '')}Binding binding;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        binding = ${fragmentName?replace('_', ' ')?capitalize?replace(' ', '')}Binding.inflate(inflater);
        return binding.getRoot();
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
    }

    @Override
    public void onResume() {
        super.onResume();
        if (presenter != null) {
            presenter.onResume();
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        presenter.onDestroy();
        presenter.detachView();
    }

    @Override
    public void setToolBar() {
        super.setToolBar();
    }

    @Override
    public void initVariable() {
        getFragmentComponent().inject(this);
        presenter.attachView(this);
    }

    @Override
    public void initView() {
        
    }

    @Override
    public void initEvent() {
        
    }

    @Override
    public String getFragmentLabel() {
        return getString(R.string.${fragmentName}_label);
    }

    @Override
    public void refresh(boolean isRefreshData) {

    }

    @Override
    public void resetView() {

    }
}
