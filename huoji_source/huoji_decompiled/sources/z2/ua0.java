package z2;

import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.litepal.exceptions.LitePalSupportException;

/* JADX INFO: loaded from: classes2.dex */
public class ua0 {
    public static final String AES = "AES";
    public static final String MD5 = "MD5";
    public Map<String, List<Long>> associatedModelsMapForJoinTable;
    private Map<String, Set<Long>> associatedModelsMapWithFK;
    private Map<String, Long> associatedModelsMapWithoutFK;
    public long baseObjId;
    private List<String> fieldsToSetToDefault;
    private List<String> listToClearAssociatedFK;
    private List<String> listToClearSelfFK;

    public class OooO implements Runnable {
        public final /* synthetic */ String[] OoooOoO;
        public final /* synthetic */ gb0 OoooOoo;

        public class OooO00o implements Runnable {
            public final /* synthetic */ boolean OoooOoO;

            public OooO00o(boolean z) {
                this.OoooOoO = z;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooO.this.OoooOoo.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooO(String[] strArr, gb0 gb0Var) {
            this.OoooOoO = strArr;
            this.OoooOoo = gb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                boolean zSaveOrUpdate = ua0.this.saveOrUpdate(this.OoooOoO);
                if (this.OoooOoo.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(zSaveOrUpdate));
                }
            }
        }
    }

    public class OooO00o implements Runnable {
        public final /* synthetic */ hb0 OoooOoO;

        /* JADX INFO: renamed from: z2.ua0$OooO00o$OooO00o, reason: collision with other inner class name */
        public class RunnableC0262OooO00o implements Runnable {
            public final /* synthetic */ int OoooOoO;

            public RunnableC0262OooO00o(int i) {
                this.OoooOoO = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooO00o.this.OoooOoO.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooO00o(hb0 hb0Var) {
            this.OoooOoO = hb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                int iDelete = ua0.this.delete();
                if (this.OoooOoO.OooO0OO() != null) {
                    na0.Oooo0O0().post(new RunnableC0262OooO00o(iDelete));
                }
            }
        }
    }

    public class OooO0O0 implements Runnable {
        public final /* synthetic */ long OoooOoO;
        public final /* synthetic */ hb0 OoooOoo;

        public class OooO00o implements Runnable {
            public final /* synthetic */ int OoooOoO;

            public OooO00o(int i) {
                this.OoooOoO = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooO0O0.this.OoooOoo.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooO0O0(long j, hb0 hb0Var) {
            this.OoooOoO = j;
            this.OoooOoo = hb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                int iUpdate = ua0.this.update(this.OoooOoO);
                if (this.OoooOoo.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(iUpdate));
                }
            }
        }
    }

    public class OooO0OO implements Runnable {
        public final /* synthetic */ String[] OoooOoO;
        public final /* synthetic */ hb0 OoooOoo;

        public class OooO00o implements Runnable {
            public final /* synthetic */ int OoooOoO;

            public OooO00o(int i) {
                this.OoooOoO = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooO0OO.this.OoooOoo.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooO0OO(String[] strArr, hb0 hb0Var) {
            this.OoooOoO = strArr;
            this.OoooOoo = hb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                int iUpdateAll = ua0.this.updateAll(this.OoooOoO);
                if (this.OoooOoo.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(iUpdateAll));
                }
            }
        }
    }

    public class OooO0o implements Runnable {
        public final /* synthetic */ gb0 OoooOoO;

        public class OooO00o implements Runnable {
            public final /* synthetic */ boolean OoooOoO;

            public OooO00o(boolean z) {
                this.OoooOoO = z;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooO0o.this.OoooOoO.OooO0OO().OooO00o(this.OoooOoO);
            }
        }

        public OooO0o(gb0 gb0Var) {
            this.OoooOoO = gb0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (ua0.class) {
                boolean zSave = ua0.this.save();
                if (this.OoooOoO.OooO0OO() != null) {
                    na0.Oooo0O0().post(new OooO00o(zSave));
                }
            }
        }
    }

    private void clearFKNameList() {
        getListToClearSelfFK().clear();
        getListToClearAssociatedFK().clear();
    }

    private void clearIdOfModelForJoinTable() {
        Iterator<String> it = getAssociatedModelsMapForJoinTable().keySet().iterator();
        while (it.hasNext()) {
            this.associatedModelsMapForJoinTable.get(it.next()).clear();
        }
        this.associatedModelsMapForJoinTable.clear();
    }

    private void clearIdOfModelWithFK() {
        Iterator<String> it = getAssociatedModelsMapWithFK().keySet().iterator();
        while (it.hasNext()) {
            this.associatedModelsMapWithFK.get(it.next()).clear();
        }
        this.associatedModelsMapWithFK.clear();
    }

    private void clearIdOfModelWithoutFK() {
        getAssociatedModelsMapWithoutFK().clear();
    }

    public void addAssociatedModelForJoinTable(String str, long j) {
        List<Long> list = getAssociatedModelsMapForJoinTable().get(str);
        if (list != null) {
            list.add(Long.valueOf(j));
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(Long.valueOf(j));
        this.associatedModelsMapForJoinTable.put(str, arrayList);
    }

    public void addAssociatedModelWithFK(String str, long j) {
        Set<Long> set = getAssociatedModelsMapWithFK().get(str);
        if (set != null) {
            set.add(Long.valueOf(j));
            return;
        }
        HashSet hashSet = new HashSet();
        hashSet.add(Long.valueOf(j));
        this.associatedModelsMapWithFK.put(str, hashSet);
    }

    public void addAssociatedModelWithoutFK(String str, long j) {
        getAssociatedModelsMapWithoutFK().put(str, Long.valueOf(j));
    }

    public void addAssociatedTableNameToClearFK(String str) {
        List<String> listToClearAssociatedFK = getListToClearAssociatedFK();
        if (listToClearAssociatedFK.contains(str)) {
            return;
        }
        listToClearAssociatedFK.add(str);
    }

    public void addEmptyModelForJoinTable(String str) {
        if (getAssociatedModelsMapForJoinTable().get(str) == null) {
            this.associatedModelsMapForJoinTable.put(str, new ArrayList());
        }
    }

    public void addFKNameToClearSelf(String str) {
        List<String> listToClearSelfFK = getListToClearSelfFK();
        if (listToClearSelfFK.contains(str)) {
            return;
        }
        listToClearSelfFK.add(str);
    }

    public void assignBaseObjId(int i) {
        this.baseObjId = i;
    }

    public void clearAssociatedData() {
        clearIdOfModelWithFK();
        clearIdOfModelWithoutFK();
        clearIdOfModelForJoinTable();
        clearFKNameList();
    }

    public void clearSavedState() {
        this.baseObjId = 0L;
    }

    public int delete() {
        int iO000000;
        synchronized (ua0.class) {
            SQLiteDatabase sQLiteDatabaseOooO0OO = xb0.OooO0OO();
            sQLiteDatabaseOooO0OO.beginTransaction();
            try {
                iO000000 = new sa0(sQLiteDatabaseOooO0OO).o000000(this);
                this.baseObjId = 0L;
                sQLiteDatabaseOooO0OO.setTransactionSuccessful();
            } finally {
                sQLiteDatabaseOooO0OO.endTransaction();
            }
        }
        return iO000000;
    }

    public hb0 deleteAsync() {
        hb0 hb0Var = new hb0();
        hb0Var.OooO0O0(new OooO00o(hb0Var));
        return hb0Var;
    }

    public Map<String, List<Long>> getAssociatedModelsMapForJoinTable() {
        if (this.associatedModelsMapForJoinTable == null) {
            this.associatedModelsMapForJoinTable = new HashMap();
        }
        return this.associatedModelsMapForJoinTable;
    }

    public Map<String, Set<Long>> getAssociatedModelsMapWithFK() {
        if (this.associatedModelsMapWithFK == null) {
            this.associatedModelsMapWithFK = new HashMap();
        }
        return this.associatedModelsMapWithFK;
    }

    public Map<String, Long> getAssociatedModelsMapWithoutFK() {
        if (this.associatedModelsMapWithoutFK == null) {
            this.associatedModelsMapWithoutFK = new HashMap();
        }
        return this.associatedModelsMapWithoutFK;
    }

    public long getBaseObjId() {
        return this.baseObjId;
    }

    public String getClassName() {
        return getClass().getName();
    }

    public List<String> getFieldsToSetToDefault() {
        if (this.fieldsToSetToDefault == null) {
            this.fieldsToSetToDefault = new ArrayList();
        }
        return this.fieldsToSetToDefault;
    }

    public List<String> getListToClearAssociatedFK() {
        if (this.listToClearAssociatedFK == null) {
            this.listToClearAssociatedFK = new ArrayList();
        }
        return this.listToClearAssociatedFK;
    }

    public List<String> getListToClearSelfFK() {
        if (this.listToClearSelfFK == null) {
            this.listToClearSelfFK = new ArrayList();
        }
        return this.listToClearSelfFK;
    }

    public String getTableName() {
        return pc0.OooO0O0(rc0.OooOOO0(getClassName()));
    }

    public boolean isSaved() {
        return this.baseObjId > 0;
    }

    public boolean save() {
        try {
            saveThrows();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public gb0 saveAsync() {
        gb0 gb0Var = new gb0();
        gb0Var.OooO0O0(new OooO0o(gb0Var));
        return gb0Var;
    }

    @Deprecated
    public boolean saveIfNotExist(String... strArr) {
        if (na0.Oooo0o(getClass(), strArr)) {
            return false;
        }
        return save();
    }

    public boolean saveOrUpdate(String... strArr) {
        synchronized (ua0.class) {
            if (strArr == null) {
                return save();
            }
            List listOooO = na0.o00ooo(strArr).OooO(getClass());
            if (listOooO.isEmpty()) {
                return save();
            }
            SQLiteDatabase sQLiteDatabaseOooO0OO = xb0.OooO0OO();
            sQLiteDatabaseOooO0OO.beginTransaction();
            try {
                Iterator it = listOooO.iterator();
                while (it.hasNext()) {
                    this.baseObjId = ((ua0) it.next()).getBaseObjId();
                    new za0(sQLiteDatabaseOooO0OO).o000000(this);
                    clearAssociatedData();
                }
                sQLiteDatabaseOooO0OO.setTransactionSuccessful();
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            } finally {
                sQLiteDatabaseOooO0OO.endTransaction();
            }
        }
    }

    public gb0 saveOrUpdateAsync(String... strArr) {
        gb0 gb0Var = new gb0();
        gb0Var.OooO0O0(new OooO(strArr, gb0Var));
        return gb0Var;
    }

    public void saveThrows() {
        synchronized (ua0.class) {
            SQLiteDatabase sQLiteDatabaseOooO0OO = xb0.OooO0OO();
            sQLiteDatabaseOooO0OO.beginTransaction();
            try {
                try {
                    new za0(sQLiteDatabaseOooO0OO).o000000(this);
                    clearAssociatedData();
                    sQLiteDatabaseOooO0OO.setTransactionSuccessful();
                } catch (Exception e) {
                    throw new LitePalSupportException(e.getMessage(), e);
                }
            } finally {
                sQLiteDatabaseOooO0OO.endTransaction();
            }
        }
    }

    public void setToDefault(String str) {
        getFieldsToSetToDefault().add(str);
    }

    public int update(long j) {
        int iO0ooOoO;
        synchronized (ua0.class) {
            try {
                try {
                    iO0ooOoO = new ab0(xb0.OooO0OO()).o0ooOoO(this, j);
                    getFieldsToSetToDefault().clear();
                } catch (Exception e) {
                    throw new LitePalSupportException(e.getMessage(), e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iO0ooOoO;
    }

    public int updateAll(String... strArr) {
        int iO0Oo0oo;
        synchronized (ua0.class) {
            try {
                try {
                    iO0Oo0oo = new ab0(xb0.OooO0OO()).o0Oo0oo(this, strArr);
                    getFieldsToSetToDefault().clear();
                } catch (Exception e) {
                    throw new LitePalSupportException(e.getMessage(), e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iO0Oo0oo;
    }

    public hb0 updateAllAsync(String... strArr) {
        hb0 hb0Var = new hb0();
        hb0Var.OooO0O0(new OooO0OO(strArr, hb0Var));
        return hb0Var;
    }

    public hb0 updateAsync(long j) {
        hb0 hb0Var = new hb0();
        hb0Var.OooO0O0(new OooO0O0(j, hb0Var));
        return hb0Var;
    }
}
