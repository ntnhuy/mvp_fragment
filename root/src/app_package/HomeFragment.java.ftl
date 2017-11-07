package ${packageName};

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import butterknife.ButterKnife;

import ${applicationPackage?replace(".mockup", "")}.R;
import ${applicationPackage?replace(".mockup", "")}.app.bases.BaseFragment;

import javax.inject.Inject;


public class ${className} extends BaseFragment implements ${className?replace("Fragment", "")}View {

    @Inject
    ${className?replace("Fragment", "")}Presenter presenter;

    View view;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        if (view == null) {
            view = inflater.inflate(R.layout.${fragmentName}, container, false);
            ButterKnife.bind(this, view);
        }
        return view;
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
