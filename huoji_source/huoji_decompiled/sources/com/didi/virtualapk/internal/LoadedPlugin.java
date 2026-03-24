package com.didi.virtualapk.internal;

import android.R;
import android.annotation.TargetApi;
import android.app.Application;
import android.app.Instrumentation;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.ChangedPackages;
import android.content.pm.FeatureInfo;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageParser;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.SharedLibraryInfo;
import android.content.pm.VersionedPackage;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Process;
import android.os.UserHandle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.IntentCompat;
import com.didi.virtualapk.PluginManager;
import com.didi.virtualapk.internal.utils.DexUtil;
import com.didi.virtualapk.internal.utils.PackageParserCompat;
import com.didi.virtualapk.internal.utils.PluginUtil;
import com.didi.virtualapk.utils.Reflector;
import com.didi.virtualapk.utils.RunUtil;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class LoadedPlugin {
    public static final String TAG = "VA.LoadedPlugin";
    public Map<ComponentName, ActivityInfo> mActivityInfos;
    public Application mApplication;
    public ClassLoader mClassLoader;
    public Context mHostContext;
    public Map<ComponentName, InstrumentationInfo> mInstrumentationInfos;
    public final String mLocation;
    public final File mNativeLibDir;
    public final PackageParser.Package mPackage;
    public final PackageInfo mPackageInfo;
    public PluginPackageManager mPackageManager;
    public Context mPluginContext;
    public PluginManager mPluginManager;
    public Map<ComponentName, ProviderInfo> mProviderInfos;
    public Map<String, ProviderInfo> mProviders;
    public Map<ComponentName, ActivityInfo> mReceiverInfos;
    public Resources mResources;
    public Map<ComponentName, ServiceInfo> mServiceInfos;

    public class PluginPackageManager extends PackageManager {
        public PackageManager mHostPackageManager;

        public PluginPackageManager() {
            this.mHostPackageManager = LoadedPlugin.this.mHostContext.getPackageManager();
        }

        @Override // android.content.pm.PackageManager
        public void addPackageToPreferred(String str) {
            this.mHostPackageManager.addPackageToPreferred(str);
        }

        @Override // android.content.pm.PackageManager
        public boolean addPermission(PermissionInfo permissionInfo) {
            return this.mHostPackageManager.addPermission(permissionInfo);
        }

        @Override // android.content.pm.PackageManager
        public boolean addPermissionAsync(PermissionInfo permissionInfo) {
            return this.mHostPackageManager.addPermissionAsync(permissionInfo);
        }

        @Override // android.content.pm.PackageManager
        public void addPreferredActivity(IntentFilter intentFilter, int i, ComponentName[] componentNameArr, ComponentName componentName) {
            this.mHostPackageManager.addPreferredActivity(intentFilter, i, componentNameArr, componentName);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(26)
        public boolean canRequestPackageInstalls() {
            return this.mHostPackageManager.canRequestPackageInstalls();
        }

        @Override // android.content.pm.PackageManager
        public String[] canonicalToCurrentPackageNames(String[] strArr) {
            return this.mHostPackageManager.canonicalToCurrentPackageNames(strArr);
        }

        @Override // android.content.pm.PackageManager
        public int checkPermission(String str, String str2) {
            return this.mHostPackageManager.checkPermission(str, str2);
        }

        @Override // android.content.pm.PackageManager
        public int checkSignatures(int i, int i2) {
            return this.mHostPackageManager.checkSignatures(i, i2);
        }

        @Override // android.content.pm.PackageManager
        public int checkSignatures(String str, String str2) {
            return this.mHostPackageManager.checkSignatures(str, str2);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(26)
        public void clearInstantAppCookie() {
            this.mHostPackageManager.clearInstantAppCookie();
        }

        @Override // android.content.pm.PackageManager
        public void clearPackagePreferredActivities(String str) {
            this.mHostPackageManager.clearPackagePreferredActivities(str);
        }

        @Override // android.content.pm.PackageManager
        public String[] currentToCanonicalPackageNames(String[] strArr) {
            return this.mHostPackageManager.currentToCanonicalPackageNames(strArr);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(17)
        public void extendVerificationTimeout(int i, int i2, long j) {
            this.mHostPackageManager.extendVerificationTimeout(i, i2, j);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(20)
        public Drawable getActivityBanner(ComponentName componentName) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(componentName);
            return loadedPlugin != null ? loadedPlugin.mResources.getDrawable(loadedPlugin.mActivityInfos.get(componentName).banner) : this.mHostPackageManager.getActivityBanner(componentName);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(20)
        public Drawable getActivityBanner(Intent intent) throws PackageManager.NameNotFoundException {
            ResolveInfo resolveInfoResolveActivity = LoadedPlugin.this.mPluginManager.resolveActivity(intent);
            return resolveInfoResolveActivity != null ? LoadedPlugin.this.mPluginManager.getLoadedPlugin(resolveInfoResolveActivity.resolvePackageName).mResources.getDrawable(resolveInfoResolveActivity.activityInfo.banner) : this.mHostPackageManager.getActivityBanner(intent);
        }

        @Override // android.content.pm.PackageManager
        public Drawable getActivityIcon(ComponentName componentName) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(componentName);
            return loadedPlugin != null ? loadedPlugin.mResources.getDrawable(loadedPlugin.mActivityInfos.get(componentName).icon) : this.mHostPackageManager.getActivityIcon(componentName);
        }

        @Override // android.content.pm.PackageManager
        public Drawable getActivityIcon(Intent intent) throws PackageManager.NameNotFoundException {
            ResolveInfo resolveInfoResolveActivity = LoadedPlugin.this.mPluginManager.resolveActivity(intent);
            return resolveInfoResolveActivity != null ? LoadedPlugin.this.mPluginManager.getLoadedPlugin(resolveInfoResolveActivity.resolvePackageName).mResources.getDrawable(resolveInfoResolveActivity.activityInfo.icon) : this.mHostPackageManager.getActivityIcon(intent);
        }

        @Override // android.content.pm.PackageManager
        public ActivityInfo getActivityInfo(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(componentName);
            return loadedPlugin != null ? loadedPlugin.mActivityInfos.get(componentName) : this.mHostPackageManager.getActivityInfo(componentName, i);
        }

        @Override // android.content.pm.PackageManager
        public Drawable getActivityLogo(ComponentName componentName) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(componentName);
            return loadedPlugin != null ? loadedPlugin.mResources.getDrawable(loadedPlugin.mActivityInfos.get(componentName).logo) : this.mHostPackageManager.getActivityLogo(componentName);
        }

        @Override // android.content.pm.PackageManager
        public Drawable getActivityLogo(Intent intent) throws PackageManager.NameNotFoundException {
            ResolveInfo resolveInfoResolveActivity = LoadedPlugin.this.mPluginManager.resolveActivity(intent);
            return resolveInfoResolveActivity != null ? LoadedPlugin.this.mPluginManager.getLoadedPlugin(resolveInfoResolveActivity.resolvePackageName).mResources.getDrawable(resolveInfoResolveActivity.activityInfo.logo) : this.mHostPackageManager.getActivityLogo(intent);
        }

        @Override // android.content.pm.PackageManager
        public List<PermissionGroupInfo> getAllPermissionGroups(int i) {
            return this.mHostPackageManager.getAllPermissionGroups(i);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(20)
        public Drawable getApplicationBanner(ApplicationInfo applicationInfo) {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(applicationInfo.packageName);
            return loadedPlugin != null ? loadedPlugin.mResources.getDrawable(applicationInfo.banner) : this.mHostPackageManager.getApplicationBanner(applicationInfo);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(20)
        public Drawable getApplicationBanner(String str) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(str);
            return loadedPlugin != null ? loadedPlugin.mResources.getDrawable(loadedPlugin.mPackage.applicationInfo.banner) : this.mHostPackageManager.getApplicationBanner(str);
        }

        @Override // android.content.pm.PackageManager
        public int getApplicationEnabledSetting(String str) {
            return this.mHostPackageManager.getApplicationEnabledSetting(str);
        }

        @Override // android.content.pm.PackageManager
        public Drawable getApplicationIcon(ApplicationInfo applicationInfo) {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(applicationInfo.packageName);
            return loadedPlugin != null ? loadedPlugin.mResources.getDrawable(applicationInfo.icon) : this.mHostPackageManager.getApplicationIcon(applicationInfo);
        }

        @Override // android.content.pm.PackageManager
        public Drawable getApplicationIcon(String str) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(str);
            return loadedPlugin != null ? loadedPlugin.mResources.getDrawable(loadedPlugin.mPackage.applicationInfo.icon) : this.mHostPackageManager.getApplicationIcon(str);
        }

        @Override // android.content.pm.PackageManager
        public ApplicationInfo getApplicationInfo(String str, int i) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(str);
            return loadedPlugin != null ? loadedPlugin.getApplicationInfo() : this.mHostPackageManager.getApplicationInfo(str, i);
        }

        @Override // android.content.pm.PackageManager
        public CharSequence getApplicationLabel(ApplicationInfo applicationInfo) {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(applicationInfo.packageName);
            if (loadedPlugin != null) {
                try {
                    return loadedPlugin.mResources.getText(applicationInfo.labelRes);
                } catch (Resources.NotFoundException unused) {
                }
            }
            return this.mHostPackageManager.getApplicationLabel(applicationInfo);
        }

        @Override // android.content.pm.PackageManager
        public Drawable getApplicationLogo(ApplicationInfo applicationInfo) {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(applicationInfo.packageName);
            if (loadedPlugin == null) {
                return this.mHostPackageManager.getApplicationLogo(applicationInfo);
            }
            Resources resources = loadedPlugin.mResources;
            int i = applicationInfo.logo;
            if (i == 0) {
                i = R.drawable.sym_def_app_icon;
            }
            return resources.getDrawable(i);
        }

        @Override // android.content.pm.PackageManager
        public Drawable getApplicationLogo(String str) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(str);
            if (loadedPlugin != null) {
                return loadedPlugin.mResources.getDrawable(loadedPlugin.mPackage.applicationInfo.logo != 0 ? loadedPlugin.mPackage.applicationInfo.logo : R.drawable.sym_def_app_icon);
            }
            return this.mHostPackageManager.getApplicationLogo(str);
        }

        @Override // android.content.pm.PackageManager
        @Nullable
        @TargetApi(26)
        public ChangedPackages getChangedPackages(int i) {
            return this.mHostPackageManager.getChangedPackages(i);
        }

        @Override // android.content.pm.PackageManager
        public int getComponentEnabledSetting(ComponentName componentName) {
            return this.mHostPackageManager.getComponentEnabledSetting(componentName);
        }

        @Override // android.content.pm.PackageManager
        public Drawable getDefaultActivityIcon() {
            return this.mHostPackageManager.getDefaultActivityIcon();
        }

        @Override // android.content.pm.PackageManager
        public Drawable getDrawable(String str, int i, ApplicationInfo applicationInfo) {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(str);
            return loadedPlugin != null ? loadedPlugin.mResources.getDrawable(i) : this.mHostPackageManager.getDrawable(str, i, applicationInfo);
        }

        @Override // android.content.pm.PackageManager
        public List<ApplicationInfo> getInstalledApplications(int i) {
            return this.mHostPackageManager.getInstalledApplications(i);
        }

        @Override // android.content.pm.PackageManager
        public List<PackageInfo> getInstalledPackages(int i) {
            return this.mHostPackageManager.getInstalledPackages(i);
        }

        @Override // android.content.pm.PackageManager
        public String getInstallerPackageName(String str) {
            return LoadedPlugin.this.mPluginManager.getLoadedPlugin(str) != null ? LoadedPlugin.this.mHostContext.getPackageName() : this.mHostPackageManager.getInstallerPackageName(str);
        }

        @Override // android.content.pm.PackageManager
        @NonNull
        @TargetApi(26)
        public byte[] getInstantAppCookie() {
            return this.mHostPackageManager.getInstantAppCookie();
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(26)
        public int getInstantAppCookieMaxBytes() {
            return this.mHostPackageManager.getInstantAppCookieMaxBytes();
        }

        @Override // android.content.pm.PackageManager
        public InstrumentationInfo getInstrumentationInfo(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(componentName);
            return loadedPlugin != null ? loadedPlugin.mInstrumentationInfos.get(componentName) : this.mHostPackageManager.getInstrumentationInfo(componentName, i);
        }

        @Override // android.content.pm.PackageManager
        public Intent getLaunchIntentForPackage(@NonNull String str) {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(str);
            return loadedPlugin != null ? loadedPlugin.getLaunchIntent() : this.mHostPackageManager.getLaunchIntentForPackage(str);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(21)
        public Intent getLeanbackLaunchIntentForPackage(@NonNull String str) {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(str);
            return loadedPlugin != null ? loadedPlugin.getLeanbackLaunchIntent() : this.mHostPackageManager.getLeanbackLaunchIntentForPackage(str);
        }

        @Override // android.content.pm.PackageManager
        public String getNameForUid(int i) {
            return this.mHostPackageManager.getNameForUid(i);
        }

        @Override // android.content.pm.PackageManager
        public int[] getPackageGids(@NonNull String str) throws PackageManager.NameNotFoundException {
            return this.mHostPackageManager.getPackageGids(str);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(24)
        public int[] getPackageGids(String str, int i) throws PackageManager.NameNotFoundException {
            return this.mHostPackageManager.getPackageGids(str, i);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(26)
        public PackageInfo getPackageInfo(VersionedPackage versionedPackage, int i) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(versionedPackage.getPackageName());
            return loadedPlugin != null ? loadedPlugin.mPackageInfo : this.mHostPackageManager.getPackageInfo(versionedPackage, i);
        }

        @Override // android.content.pm.PackageManager
        public PackageInfo getPackageInfo(String str, int i) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(str);
            return loadedPlugin != null ? loadedPlugin.mPackageInfo : this.mHostPackageManager.getPackageInfo(str, i);
        }

        @Override // android.content.pm.PackageManager
        @NonNull
        @TargetApi(21)
        public PackageInstaller getPackageInstaller() {
            return this.mHostPackageManager.getPackageInstaller();
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(24)
        public int getPackageUid(String str, int i) throws PackageManager.NameNotFoundException {
            return this.mHostPackageManager.getPackageUid(str, i);
        }

        @Override // android.content.pm.PackageManager
        public String[] getPackagesForUid(int i) {
            return this.mHostPackageManager.getPackagesForUid(i);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(18)
        public List<PackageInfo> getPackagesHoldingPermissions(String[] strArr, int i) {
            return this.mHostPackageManager.getPackagesHoldingPermissions(strArr, i);
        }

        @Override // android.content.pm.PackageManager
        public PermissionGroupInfo getPermissionGroupInfo(String str, int i) throws PackageManager.NameNotFoundException {
            return this.mHostPackageManager.getPermissionGroupInfo(str, i);
        }

        @Override // android.content.pm.PackageManager
        public PermissionInfo getPermissionInfo(String str, int i) throws PackageManager.NameNotFoundException {
            return this.mHostPackageManager.getPermissionInfo(str, i);
        }

        @Override // android.content.pm.PackageManager
        public int getPreferredActivities(@NonNull List<IntentFilter> list, @NonNull List<ComponentName> list2, String str) {
            return this.mHostPackageManager.getPreferredActivities(list, list2, str);
        }

        @Override // android.content.pm.PackageManager
        public List<PackageInfo> getPreferredPackages(int i) {
            return this.mHostPackageManager.getPreferredPackages(i);
        }

        @Override // android.content.pm.PackageManager
        public ProviderInfo getProviderInfo(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(componentName);
            return loadedPlugin != null ? loadedPlugin.mProviderInfos.get(componentName) : this.mHostPackageManager.getProviderInfo(componentName, i);
        }

        @Override // android.content.pm.PackageManager
        public ActivityInfo getReceiverInfo(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(componentName);
            return loadedPlugin != null ? loadedPlugin.mReceiverInfos.get(componentName) : this.mHostPackageManager.getReceiverInfo(componentName, i);
        }

        @Override // android.content.pm.PackageManager
        public Resources getResourcesForActivity(ComponentName componentName) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(componentName);
            return loadedPlugin != null ? loadedPlugin.mResources : this.mHostPackageManager.getResourcesForActivity(componentName);
        }

        @Override // android.content.pm.PackageManager
        public Resources getResourcesForApplication(ApplicationInfo applicationInfo) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(applicationInfo.packageName);
            return loadedPlugin != null ? loadedPlugin.mResources : this.mHostPackageManager.getResourcesForApplication(applicationInfo);
        }

        @Override // android.content.pm.PackageManager
        public Resources getResourcesForApplication(String str) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(str);
            return loadedPlugin != null ? loadedPlugin.mResources : this.mHostPackageManager.getResourcesForApplication(str);
        }

        @Override // android.content.pm.PackageManager
        public ServiceInfo getServiceInfo(ComponentName componentName, int i) throws PackageManager.NameNotFoundException {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(componentName);
            return loadedPlugin != null ? loadedPlugin.mServiceInfos.get(componentName) : this.mHostPackageManager.getServiceInfo(componentName, i);
        }

        @Override // android.content.pm.PackageManager
        @NonNull
        @TargetApi(26)
        public List<SharedLibraryInfo> getSharedLibraries(int i) {
            return this.mHostPackageManager.getSharedLibraries(i);
        }

        @Override // android.content.pm.PackageManager
        public FeatureInfo[] getSystemAvailableFeatures() {
            return this.mHostPackageManager.getSystemAvailableFeatures();
        }

        @Override // android.content.pm.PackageManager
        public String[] getSystemSharedLibraryNames() {
            return this.mHostPackageManager.getSystemSharedLibraryNames();
        }

        @Override // android.content.pm.PackageManager
        public CharSequence getText(String str, int i, ApplicationInfo applicationInfo) {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(str);
            return loadedPlugin != null ? loadedPlugin.mResources.getText(i) : this.mHostPackageManager.getText(str, i, applicationInfo);
        }

        @TargetApi(17)
        public Drawable getUserBadgeForDensity(UserHandle userHandle, int i) {
            try {
                return (Drawable) Reflector.with(this.mHostPackageManager).method("getUserBadgeForDensity", UserHandle.class, Integer.TYPE).call(userHandle, Integer.valueOf(i));
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(21)
        public Drawable getUserBadgedDrawableForDensity(Drawable drawable, UserHandle userHandle, Rect rect, int i) {
            return this.mHostPackageManager.getUserBadgedDrawableForDensity(drawable, userHandle, rect, i);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(21)
        public Drawable getUserBadgedIcon(Drawable drawable, UserHandle userHandle) {
            return this.mHostPackageManager.getUserBadgedIcon(drawable, userHandle);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(21)
        public CharSequence getUserBadgedLabel(CharSequence charSequence, UserHandle userHandle) {
            return this.mHostPackageManager.getUserBadgedLabel(charSequence, userHandle);
        }

        @Override // android.content.pm.PackageManager
        public XmlResourceParser getXml(String str, int i, ApplicationInfo applicationInfo) {
            LoadedPlugin loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(str);
            return loadedPlugin != null ? loadedPlugin.mResources.getXml(i) : this.mHostPackageManager.getXml(str, i, applicationInfo);
        }

        @Override // android.content.pm.PackageManager
        public boolean hasSystemFeature(String str) {
            return this.mHostPackageManager.hasSystemFeature(str);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(24)
        public boolean hasSystemFeature(String str, int i) {
            return this.mHostPackageManager.hasSystemFeature(str, i);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(26)
        public boolean isInstantApp() {
            return this.mHostPackageManager.isInstantApp();
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(26)
        public boolean isInstantApp(String str) {
            return this.mHostPackageManager.isInstantApp(str);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(23)
        public boolean isPermissionRevokedByPolicy(@NonNull String str, @NonNull String str2) {
            return this.mHostPackageManager.isPermissionRevokedByPolicy(str, str2);
        }

        @Override // android.content.pm.PackageManager
        public boolean isSafeMode() {
            return this.mHostPackageManager.isSafeMode();
        }

        public Drawable loadItemIcon(PackageItemInfo packageItemInfo, ApplicationInfo applicationInfo) {
            if (packageItemInfo == null) {
                return null;
            }
            return packageItemInfo.loadIcon(this.mHostPackageManager);
        }

        @Override // android.content.pm.PackageManager
        public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int i) {
            LoadedPlugin loadedPlugin;
            ActivityInfo receiverInfo;
            ComponentName component = intent.getComponent();
            if (component == null && intent.getSelector() != null) {
                intent = intent.getSelector();
                component = intent.getComponent();
            }
            if (component != null && (loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(component)) != null && (receiverInfo = loadedPlugin.getReceiverInfo(component)) != null) {
                ResolveInfo resolveInfo = new ResolveInfo();
                resolveInfo.activityInfo = receiverInfo;
                return Arrays.asList(resolveInfo);
            }
            ArrayList arrayList = new ArrayList();
            List<ResolveInfo> listQueryBroadcastReceivers = LoadedPlugin.this.mPluginManager.queryBroadcastReceivers(intent, i);
            if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() > 0) {
                arrayList.addAll(listQueryBroadcastReceivers);
            }
            List<ResolveInfo> listQueryBroadcastReceivers2 = this.mHostPackageManager.queryBroadcastReceivers(intent, i);
            if (listQueryBroadcastReceivers2 != null && listQueryBroadcastReceivers2.size() > 0) {
                arrayList.addAll(listQueryBroadcastReceivers2);
            }
            return arrayList;
        }

        @Override // android.content.pm.PackageManager
        public List<ProviderInfo> queryContentProviders(String str, int i, int i2) {
            return this.mHostPackageManager.queryContentProviders(str, i, i2);
        }

        @Override // android.content.pm.PackageManager
        public List<InstrumentationInfo> queryInstrumentation(String str, int i) {
            return this.mHostPackageManager.queryInstrumentation(str, i);
        }

        @Override // android.content.pm.PackageManager
        public List<ResolveInfo> queryIntentActivities(Intent intent, int i) {
            LoadedPlugin loadedPlugin;
            ActivityInfo activityInfo;
            ComponentName component = intent.getComponent();
            if (component == null && intent.getSelector() != null) {
                intent = intent.getSelector();
                component = intent.getComponent();
            }
            if (component != null && (loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(component)) != null && (activityInfo = loadedPlugin.getActivityInfo(component)) != null) {
                ResolveInfo resolveInfo = new ResolveInfo();
                resolveInfo.activityInfo = activityInfo;
                return Arrays.asList(resolveInfo);
            }
            ArrayList arrayList = new ArrayList();
            List<ResolveInfo> listQueryIntentActivities = LoadedPlugin.this.mPluginManager.queryIntentActivities(intent, i);
            if (listQueryIntentActivities != null && listQueryIntentActivities.size() > 0) {
                arrayList.addAll(listQueryIntentActivities);
            }
            List<ResolveInfo> listQueryIntentActivities2 = this.mHostPackageManager.queryIntentActivities(intent, i);
            if (listQueryIntentActivities2 != null && listQueryIntentActivities2.size() > 0) {
                arrayList.addAll(listQueryIntentActivities2);
            }
            return arrayList;
        }

        @Override // android.content.pm.PackageManager
        public List<ResolveInfo> queryIntentActivityOptions(ComponentName componentName, Intent[] intentArr, Intent intent, int i) {
            return this.mHostPackageManager.queryIntentActivityOptions(componentName, intentArr, intent, i);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(19)
        public List<ResolveInfo> queryIntentContentProviders(Intent intent, int i) {
            return this.mHostPackageManager.queryIntentContentProviders(intent, i);
        }

        @Override // android.content.pm.PackageManager
        public List<ResolveInfo> queryIntentServices(Intent intent, int i) {
            LoadedPlugin loadedPlugin;
            ServiceInfo serviceInfo;
            ComponentName component = intent.getComponent();
            if (component == null && intent.getSelector() != null) {
                intent = intent.getSelector();
                component = intent.getComponent();
            }
            if (component != null && (loadedPlugin = LoadedPlugin.this.mPluginManager.getLoadedPlugin(component)) != null && (serviceInfo = loadedPlugin.getServiceInfo(component)) != null) {
                ResolveInfo resolveInfo = new ResolveInfo();
                resolveInfo.serviceInfo = serviceInfo;
                return Arrays.asList(resolveInfo);
            }
            ArrayList arrayList = new ArrayList();
            List<ResolveInfo> listQueryIntentServices = LoadedPlugin.this.mPluginManager.queryIntentServices(intent, i);
            if (listQueryIntentServices != null && listQueryIntentServices.size() > 0) {
                arrayList.addAll(listQueryIntentServices);
            }
            List<ResolveInfo> listQueryIntentServices2 = this.mHostPackageManager.queryIntentServices(intent, i);
            if (listQueryIntentServices2 != null && listQueryIntentServices2.size() > 0) {
                arrayList.addAll(listQueryIntentServices2);
            }
            return arrayList;
        }

        @Override // android.content.pm.PackageManager
        public List<PermissionInfo> queryPermissionsByGroup(String str, int i) throws PackageManager.NameNotFoundException {
            return this.mHostPackageManager.queryPermissionsByGroup(str, i);
        }

        @Override // android.content.pm.PackageManager
        public void removePackageFromPreferred(String str) {
            this.mHostPackageManager.removePackageFromPreferred(str);
        }

        @Override // android.content.pm.PackageManager
        public void removePermission(String str) {
            this.mHostPackageManager.removePermission(str);
        }

        @Override // android.content.pm.PackageManager
        public ResolveInfo resolveActivity(Intent intent, int i) {
            ResolveInfo resolveInfoResolveActivity = LoadedPlugin.this.mPluginManager.resolveActivity(intent, i);
            return resolveInfoResolveActivity != null ? resolveInfoResolveActivity : this.mHostPackageManager.resolveActivity(intent, i);
        }

        @Override // android.content.pm.PackageManager
        public ProviderInfo resolveContentProvider(String str, int i) {
            ProviderInfo providerInfoResolveContentProvider = LoadedPlugin.this.mPluginManager.resolveContentProvider(str, i);
            return providerInfoResolveContentProvider != null ? providerInfoResolveContentProvider : this.mHostPackageManager.resolveContentProvider(str, i);
        }

        @Override // android.content.pm.PackageManager
        public ResolveInfo resolveService(Intent intent, int i) {
            ResolveInfo resolveInfoResolveService = LoadedPlugin.this.mPluginManager.resolveService(intent, i);
            return resolveInfoResolveService != null ? resolveInfoResolveService : this.mHostPackageManager.resolveService(intent, i);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(26)
        public void setApplicationCategoryHint(@NonNull String str, int i) {
            this.mHostPackageManager.setApplicationCategoryHint(str, i);
        }

        @Override // android.content.pm.PackageManager
        public void setApplicationEnabledSetting(String str, int i, int i2) {
            this.mHostPackageManager.setApplicationEnabledSetting(str, i, i2);
        }

        @Override // android.content.pm.PackageManager
        public void setComponentEnabledSetting(ComponentName componentName, int i, int i2) {
            this.mHostPackageManager.setComponentEnabledSetting(componentName, i, i2);
        }

        @Override // android.content.pm.PackageManager
        public void setInstallerPackageName(String str, String str2) {
            if (LoadedPlugin.this.mPluginManager.getLoadedPlugin(str) != null) {
                return;
            }
            this.mHostPackageManager.setInstallerPackageName(str, str2);
        }

        @Override // android.content.pm.PackageManager
        @TargetApi(26)
        public void updateInstantAppCookie(@Nullable byte[] bArr) {
            this.mHostPackageManager.updateInstantAppCookie(bArr);
        }

        @Override // android.content.pm.PackageManager
        public void verifyPendingInstall(int i, int i2) {
            this.mHostPackageManager.verifyPendingInstall(i, i2);
        }
    }

    public LoadedPlugin(PluginManager pluginManager, Context context, File file) throws Exception {
        this.mPluginManager = pluginManager;
        this.mHostContext = context;
        this.mLocation = file.getAbsolutePath();
        PackageParser.Package r0 = PackageParserCompat.parsePackage(context, file, 4);
        this.mPackage = r0;
        r0.applicationInfo.metaData = r0.mAppMetaData;
        PackageInfo packageInfo = new PackageInfo();
        this.mPackageInfo = packageInfo;
        ApplicationInfo applicationInfo = r0.applicationInfo;
        packageInfo.applicationInfo = applicationInfo;
        applicationInfo.sourceDir = file.getAbsolutePath();
        int i = Build.VERSION.SDK_INT;
        if (i >= 28 || (i == 27 && Build.VERSION.PREVIEW_SDK_INT != 0)) {
            try {
                packageInfo.signatures = r0.mSigningDetails.signatures;
            } catch (Throwable unused) {
                this.mPackageInfo.signatures = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
            }
        } else {
            packageInfo.signatures = r0.mSignatures;
        }
        this.mPackageInfo.packageName = this.mPackage.packageName;
        if (pluginManager.getLoadedPlugin(this.mPackageInfo.packageName) != null) {
            throw new RuntimeException("plugin has already been loaded : " + this.mPackageInfo.packageName);
        }
        this.mPackageInfo.versionCode = this.mPackage.mVersionCode;
        this.mPackageInfo.versionName = this.mPackage.mVersionName;
        this.mPackageInfo.permissions = new PermissionInfo[0];
        this.mPackageManager = createPluginPackageManager();
        this.mPluginContext = createPluginContext(null);
        File dir = getDir(context, Constants.NATIVE_DIR);
        this.mNativeLibDir = dir;
        this.mPackage.applicationInfo.nativeLibraryDir = dir.getAbsolutePath();
        this.mResources = createResources(context, getPackageName(), file);
        this.mClassLoader = createClassLoader(context, file, dir, context.getClassLoader());
        tryToCopyNativeLib(file);
        HashMap map = new HashMap();
        for (PackageParser.Instrumentation instrumentation : this.mPackage.instrumentation) {
            map.put(instrumentation.getComponentName(), instrumentation.info);
        }
        this.mInstrumentationInfos = Collections.unmodifiableMap(map);
        this.mPackageInfo.instrumentation = (InstrumentationInfo[]) map.values().toArray(new InstrumentationInfo[map.size()]);
        HashMap map2 = new HashMap();
        for (PackageParser.Activity activity : this.mPackage.activities) {
            activity.info.metaData = activity.metaData;
            map2.put(activity.getComponentName(), activity.info);
        }
        this.mActivityInfos = Collections.unmodifiableMap(map2);
        this.mPackageInfo.activities = (ActivityInfo[]) map2.values().toArray(new ActivityInfo[map2.size()]);
        HashMap map3 = new HashMap();
        for (PackageParser.Service service : this.mPackage.services) {
            map3.put(service.getComponentName(), service.info);
        }
        this.mServiceInfos = Collections.unmodifiableMap(map3);
        this.mPackageInfo.services = (ServiceInfo[]) map3.values().toArray(new ServiceInfo[map3.size()]);
        HashMap map4 = new HashMap();
        HashMap map5 = new HashMap();
        for (PackageParser.Provider provider : this.mPackage.providers) {
            map4.put(provider.info.authority, provider.info);
            map5.put(provider.getComponentName(), provider.info);
        }
        this.mProviders = Collections.unmodifiableMap(map4);
        this.mProviderInfos = Collections.unmodifiableMap(map5);
        this.mPackageInfo.providers = (ProviderInfo[]) map5.values().toArray(new ProviderInfo[map5.size()]);
        HashMap map6 = new HashMap();
        for (PackageParser.Activity activity2 : this.mPackage.receivers) {
            map6.put(activity2.getComponentName(), activity2.info);
            BroadcastReceiver broadcastReceiver = (BroadcastReceiver) BroadcastReceiver.class.cast(getClassLoader().loadClass(activity2.getComponentName().getClassName()).newInstance());
            Iterator it = activity2.intents.iterator();
            while (it.hasNext()) {
                this.mHostContext.registerReceiver(broadcastReceiver, (PackageParser.ActivityIntentInfo) it.next());
            }
        }
        this.mReceiverInfos = Collections.unmodifiableMap(map6);
        this.mPackageInfo.receivers = (ActivityInfo[]) map6.values().toArray(new ActivityInfo[map6.size()]);
        invokeApplication();
    }

    public ResolveInfo chooseBestActivity(Intent intent, String str, int i, List<ResolveInfo> list) {
        return list.get(0);
    }

    public AssetManager createAssetManager(Context context, File file) throws Exception {
        AssetManager assetManager = (AssetManager) AssetManager.class.newInstance();
        Reflector.with(assetManager).method("addAssetPath", String.class).call(file.getAbsolutePath());
        return assetManager;
    }

    public ClassLoader createClassLoader(Context context, File file, File file2, ClassLoader classLoader) throws Exception {
        DexUtil.insertDex(new DexClassLoader(file.getAbsolutePath(), getDir(context, Constants.OPTIMIZE_DIR).getAbsolutePath(), file2.getAbsolutePath(), classLoader), classLoader, file2);
        return classLoader;
    }

    public PluginContext createPluginContext(Context context) {
        return context == null ? new PluginContext(this) : new PluginContext(this, context);
    }

    public PluginPackageManager createPluginPackageManager() {
        return new PluginPackageManager();
    }

    public Resources createResources(Context context, String str, File file) throws Exception {
        return ResourcesManager.createResources(context, str, file);
    }

    public ActivityInfo getActivityInfo(ComponentName componentName) {
        return this.mActivityInfos.get(componentName);
    }

    public Application getApplication() {
        return this.mApplication;
    }

    public ApplicationInfo getApplicationInfo() {
        return this.mPackage.applicationInfo;
    }

    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    public ClassLoader getClassLoader() {
        return this.mClassLoader;
    }

    public String getCodePath() {
        return this.mPackage.applicationInfo.sourceDir;
    }

    public File getDir(Context context, String str) {
        return context.getDir(str, 0);
    }

    public Context getHostContext() {
        return this.mHostContext;
    }

    public Intent getLaunchIntent() {
        ContentResolver contentResolver = this.mPluginContext.getContentResolver();
        Intent intentAddCategory = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER");
        for (PackageParser.Activity activity : this.mPackage.activities) {
            Iterator it = activity.intents.iterator();
            while (it.hasNext()) {
                if (((PackageParser.ActivityIntentInfo) it.next()).match(contentResolver, intentAddCategory, false, "VA.LoadedPlugin") > 0) {
                    return Intent.makeMainActivity(activity.getComponentName());
                }
            }
        }
        return null;
    }

    public Intent getLeanbackLaunchIntent() {
        ContentResolver contentResolver = this.mPluginContext.getContentResolver();
        Intent intentAddCategory = new Intent("android.intent.action.MAIN").addCategory(IntentCompat.CATEGORY_LEANBACK_LAUNCHER);
        for (PackageParser.Activity activity : this.mPackage.activities) {
            Iterator it = activity.intents.iterator();
            while (it.hasNext()) {
                if (((PackageParser.ActivityIntentInfo) it.next()).match(contentResolver, intentAddCategory, false, "VA.LoadedPlugin") > 0) {
                    Intent intent = new Intent("android.intent.action.MAIN");
                    intent.setComponent(activity.getComponentName());
                    intent.addCategory(IntentCompat.CATEGORY_LEANBACK_LAUNCHER);
                    return intent;
                }
            }
        }
        return null;
    }

    public String getLocation() {
        return this.mLocation;
    }

    public PackageInfo getPackageInfo() {
        return this.mPackageInfo;
    }

    public PackageManager getPackageManager() {
        return this.mPackageManager;
    }

    public String getPackageName() {
        return this.mPackage.packageName;
    }

    public String getPackageResourcePath() {
        int iMyUid = Process.myUid();
        ApplicationInfo applicationInfo = this.mPackage.applicationInfo;
        return applicationInfo.uid == iMyUid ? applicationInfo.sourceDir : applicationInfo.publicSourceDir;
    }

    public Context getPluginContext() {
        return this.mPluginContext;
    }

    public PluginManager getPluginManager() {
        return this.mPluginManager;
    }

    public ProviderInfo getProviderInfo(ComponentName componentName) {
        return this.mProviderInfos.get(componentName);
    }

    public ActivityInfo getReceiverInfo(ComponentName componentName) {
        return this.mReceiverInfos.get(componentName);
    }

    public Resources getResources() {
        return this.mResources;
    }

    public ServiceInfo getServiceInfo(ComponentName componentName) {
        return this.mServiceInfos.get(componentName);
    }

    public Resources.Theme getTheme() {
        Resources.Theme themeNewTheme = this.mResources.newTheme();
        themeNewTheme.applyStyle(PluginUtil.selectDefaultTheme(this.mPackage.applicationInfo.theme, Build.VERSION.SDK_INT), false);
        return themeNewTheme;
    }

    public void invokeApplication() throws Exception {
        final Exception[] excArr = new Exception[1];
        RunUtil.runOnUiThread(new Runnable() { // from class: com.didi.virtualapk.internal.LoadedPlugin.1
            @Override // java.lang.Runnable
            public void run() {
                LoadedPlugin loadedPlugin = LoadedPlugin.this;
                if (loadedPlugin.mApplication != null) {
                    return;
                }
                try {
                    loadedPlugin.mApplication = loadedPlugin.makeApplication(false, loadedPlugin.mPluginManager.getInstrumentation());
                } catch (Exception e) {
                    excArr[0] = e;
                }
            }
        }, true);
        if (excArr[0] != null) {
            throw excArr[0];
        }
    }

    public Application makeApplication(boolean z, Instrumentation instrumentation) throws Exception {
        Application application = this.mApplication;
        if (application != null) {
            return application;
        }
        String str = this.mPackage.applicationInfo.className;
        if (z || str == null) {
            str = "android.app.Application";
        }
        Application applicationNewApplication = instrumentation.newApplication(this.mClassLoader, str, getPluginContext());
        this.mApplication = applicationNewApplication;
        applicationNewApplication.registerActivityLifecycleCallbacks(new ActivityLifecycleCallbacksProxy());
        instrumentation.callApplicationOnCreate(this.mApplication);
        return this.mApplication;
    }

    public boolean match(PackageParser.Component component, ComponentName componentName) {
        ComponentName componentName2 = component.getComponentName();
        if (componentName2 == componentName) {
            return true;
        }
        if (componentName2 == null || componentName == null || !componentName2.getClassName().equals(componentName.getClassName())) {
            return false;
        }
        return componentName2.getPackageName().equals(componentName.getPackageName()) || this.mHostContext.getPackageName().equals(componentName.getPackageName());
    }

    public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int i) {
        ResolveInfo resolveInfo;
        ComponentName component = intent.getComponent();
        ArrayList arrayList = new ArrayList();
        ContentResolver contentResolver = this.mPluginContext.getContentResolver();
        for (PackageParser.Activity activity : this.mPackage.receivers) {
            if (activity.getComponentName().equals(component)) {
                resolveInfo = new ResolveInfo();
            } else if (component == null) {
                Iterator it = activity.intents.iterator();
                while (it.hasNext()) {
                    if (((PackageParser.ActivityIntentInfo) it.next()).match(contentResolver, intent, true, "VA.LoadedPlugin") >= 0) {
                        resolveInfo = new ResolveInfo();
                    }
                }
            }
            resolveInfo.activityInfo = activity.info;
            arrayList.add(resolveInfo);
        }
        return arrayList;
    }

    public List<ResolveInfo> queryIntentActivities(Intent intent, int i) {
        ResolveInfo resolveInfo;
        ComponentName component = intent.getComponent();
        ArrayList arrayList = new ArrayList();
        ContentResolver contentResolver = this.mPluginContext.getContentResolver();
        for (PackageParser.Activity activity : this.mPackage.activities) {
            if (match(activity, component)) {
                resolveInfo = new ResolveInfo();
            } else if (component == null) {
                Iterator it = activity.intents.iterator();
                while (it.hasNext()) {
                    if (((PackageParser.ActivityIntentInfo) it.next()).match(contentResolver, intent, true, "VA.LoadedPlugin") >= 0) {
                        resolveInfo = new ResolveInfo();
                    }
                }
            }
            resolveInfo.activityInfo = activity.info;
            arrayList.add(resolveInfo);
        }
        return arrayList;
    }

    public List<ResolveInfo> queryIntentServices(Intent intent, int i) {
        ResolveInfo resolveInfo;
        ComponentName component = intent.getComponent();
        ArrayList arrayList = new ArrayList();
        ContentResolver contentResolver = this.mPluginContext.getContentResolver();
        for (PackageParser.Service service : this.mPackage.services) {
            if (match(service, component)) {
                resolveInfo = new ResolveInfo();
            } else if (component == null) {
                Iterator it = service.intents.iterator();
                while (it.hasNext()) {
                    if (((PackageParser.ServiceIntentInfo) it.next()).match(contentResolver, intent, true, "VA.LoadedPlugin") >= 0) {
                        resolveInfo = new ResolveInfo();
                    }
                }
            }
            resolveInfo.serviceInfo = service.info;
            arrayList.add(resolveInfo);
        }
        return arrayList;
    }

    public ResolveInfo resolveActivity(Intent intent, int i) {
        List<ResolveInfo> listQueryIntentActivities = queryIntentActivities(intent, i);
        if (listQueryIntentActivities == null || listQueryIntentActivities.isEmpty()) {
            return null;
        }
        return chooseBestActivity(intent, intent.resolveTypeIfNeeded(this.mPluginContext.getContentResolver()), i, listQueryIntentActivities);
    }

    public ProviderInfo resolveContentProvider(String str, int i) {
        return this.mProviders.get(str);
    }

    public ResolveInfo resolveService(Intent intent, int i) {
        List<ResolveInfo> listQueryIntentServices = queryIntentServices(intent, i);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            return null;
        }
        return chooseBestActivity(intent, intent.resolveTypeIfNeeded(this.mPluginContext.getContentResolver()), i, listQueryIntentServices);
    }

    public void setTheme(int i) {
        Reflector.QuietReflector.with((Object) this.mResources).field("mThemeResId").set((Object) Integer.valueOf(i));
    }

    public void tryToCopyNativeLib(File file) throws Exception {
        PluginUtil.copyNativeLib(file, this.mHostContext, this.mPackageInfo, this.mNativeLibDir);
    }

    public void updateResources(Resources resources) {
        this.mResources = resources;
    }
}
