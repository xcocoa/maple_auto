package androidx.databinding;

import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import com.didi.virtualapk.PluginManager;
import com.didi.virtualapk.internal.LoadedPlugin;
import java.util.LinkedList;
import org.apache.commons.io.FilenameUtils;

/* JADX INFO: loaded from: classes.dex */
public class DataBinderMapperProxy extends DataBinderMapper implements PluginManager.Callback {
    public static final String TAG = "VA.DataBinderMapperProxy";
    private DataBinderMapper[] mCache;
    private final LinkedList<DataBinderMapper> mMappers = new LinkedList<>();

    public DataBinderMapperProxy(@NonNull Object obj) {
        addMapper((DataBinderMapper) obj);
    }

    private void addMapper(DataBinderMapper dataBinderMapper) {
        int size;
        synchronized (this.mMappers) {
            this.mMappers.add(dataBinderMapper);
            this.mCache = null;
            size = this.mMappers.size();
        }
        Log.d(TAG, "Added mapper: " + dataBinderMapper + ", size: " + size);
    }

    private DataBinderMapper[] getCache() {
        DataBinderMapper[] dataBinderMapperArr;
        synchronized (this.mMappers) {
            if (this.mCache == null) {
                LinkedList<DataBinderMapper> linkedList = this.mMappers;
                this.mCache = (DataBinderMapper[]) linkedList.toArray(new DataBinderMapper[linkedList.size()]);
            }
            dataBinderMapperArr = this.mCache;
        }
        return dataBinderMapperArr;
    }

    public String convertBrIdToString(int i) {
        for (DataBinderMapper dataBinderMapper : getCache()) {
            String strConvertBrIdToString = dataBinderMapper.convertBrIdToString(i);
            if (strConvertBrIdToString != null) {
                return strConvertBrIdToString;
            }
        }
        return null;
    }

    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        for (DataBinderMapper dataBinderMapper : getCache()) {
            ViewDataBinding dataBinder = dataBinderMapper.getDataBinder(dataBindingComponent, view, i);
            if (dataBinder != null) {
                return dataBinder;
            }
        }
        return null;
    }

    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        for (DataBinderMapper dataBinderMapper : getCache()) {
            ViewDataBinding dataBinder = dataBinderMapper.getDataBinder(dataBindingComponent, viewArr, i);
            if (dataBinder != null) {
                return dataBinder;
            }
        }
        return null;
    }

    public int getLayoutId(String str) {
        for (DataBinderMapper dataBinderMapper : getCache()) {
            int layoutId = dataBinderMapper.getLayoutId(str);
            if (layoutId != 0) {
                return layoutId;
            }
        }
        return 0;
    }

    @Override // com.didi.virtualapk.PluginManager.Callback
    public void onAddedLoadedPlugin(LoadedPlugin loadedPlugin) {
        try {
            String str = "androidx.databinding.DataBinderMapper_" + loadedPlugin.getPackageName().replace(FilenameUtils.EXTENSION_SEPARATOR, '_');
            Log.d(TAG, "Try to find the class: " + str);
            addMapper((DataBinderMapper) Class.forName(str, true, loadedPlugin.getClassLoader()).newInstance());
        } catch (Exception e) {
            Log.w(TAG, e);
        }
    }
}
