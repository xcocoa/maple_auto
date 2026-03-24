package cn.haorui.sdk.core.ad.recycler;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import cn.haorui.sdk.R;
import cn.haorui.sdk.core.view.TouchAdContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerAdUtils {
    private static String adSailAdContainerTagRecycler = "adsail_ad_container_tag_recycler";
    private static ArrayList<Class<? extends ViewGroup>> shellClasses;

    static {
        ArrayList<Class<? extends ViewGroup>> arrayList = new ArrayList<>();
        shellClasses = arrayList;
        arrayList.add(TouchAdContainer.class);
    }

    private static ViewGroup findTaggedContainer(ViewGroup viewGroup) {
        ViewGroup viewGroupFindTaggedContainer;
        Object tag = viewGroup.getTag(R.id.adsail_ad_container_tag_recycler);
        if (tag != null && tag.equals(adSailAdContainerTagRecycler)) {
            return viewGroup;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof ViewGroup) && (viewGroupFindTaggedContainer = findTaggedContainer((ViewGroup) childAt)) != null) {
                return viewGroupFindTaggedContainer;
            }
        }
        return null;
    }

    public static ViewGroup[] getInfo(ViewGroup viewGroup, Class cls, Class cls2) {
        ViewGroup[] viewGroupArr = {null, null};
        ViewGroup viewGroupFindTaggedContainer = findTaggedContainer(viewGroup);
        if (viewGroupFindTaggedContainer == null) {
            viewGroupArr[0] = viewGroup;
            viewGroup.setTag(R.id.adsail_ad_container_tag_recycler, adSailAdContainerTagRecycler);
        } else {
            viewGroupArr[0] = viewGroupFindTaggedContainer;
            Object tag = viewGroupFindTaggedContainer.getTag(R.id.adsail_ad_container_class_recycler);
            if (tag != null && tag.equals(cls)) {
                ViewGroup viewGroup2 = viewGroupFindTaggedContainer;
                while (true) {
                    if (!(viewGroup2 instanceof ViewGroup)) {
                        break;
                    }
                    if (cls2.isInstance(viewGroup2)) {
                        viewGroupArr[1] = viewGroup2;
                        break;
                    }
                    if (viewGroup2.getParent() instanceof ViewGroup) {
                        viewGroup2 = (ViewGroup) viewGroup2.getParent();
                    }
                }
            }
            if (viewGroupArr[1] == null) {
                removeShells(viewGroupFindTaggedContainer);
            }
        }
        viewGroupArr[0].setTag(R.id.adsail_ad_container_class_recycler, cls);
        return viewGroupArr;
    }

    private static boolean isShellInstance(Object obj) {
        Iterator<Class<? extends ViewGroup>> it = shellClasses.iterator();
        while (it.hasNext()) {
            if (it.next().isInstance(obj)) {
                return true;
            }
        }
        return false;
    }

    private static void removeShells(ViewGroup viewGroup) {
        ViewGroup viewGroup2 = null;
        ViewGroup viewGroup3 = viewGroup;
        while (viewGroup3 != null) {
            ViewParent parent = viewGroup3.getParent();
            if (!(parent instanceof ViewGroup)) {
                break;
            }
            viewGroup3 = (ViewGroup) parent;
            if (isShellInstance(viewGroup3)) {
                viewGroup2 = viewGroup3;
            }
        }
        if (viewGroup2 != null) {
            ViewParent parent2 = viewGroup2.getParent();
            if (parent2 instanceof ViewGroup) {
                ViewGroup viewGroup4 = (ViewGroup) parent2;
                int iIndexOfChild = viewGroup4.indexOfChild(viewGroup2);
                if (viewGroup.getParent() instanceof ViewGroup) {
                    ((ViewGroup) viewGroup.getParent()).removeView(viewGroup);
                }
                viewGroup4.removeView(viewGroup2);
                viewGroup4.addView(viewGroup, iIndexOfChild, viewGroup2.getLayoutParams());
            }
        }
    }

    public static ViewGroup stripShells(ViewGroup viewGroup) {
        ViewGroup viewGroupFindTaggedContainer = findTaggedContainer(viewGroup);
        if (viewGroupFindTaggedContainer == null) {
            viewGroup.setTag(R.id.adsail_ad_container_tag_recycler, adSailAdContainerTagRecycler);
        } else {
            viewGroup = viewGroupFindTaggedContainer;
        }
        removeShells(viewGroup);
        return viewGroup;
    }
}
