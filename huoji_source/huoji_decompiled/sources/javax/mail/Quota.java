package javax.mail;

/* JADX INFO: loaded from: classes2.dex */
public class Quota {
    public String quotaRoot;
    public Resource[] resources;

    public static class Resource {
        public long limit;
        public String name;
        public long usage;

        public Resource(String str, long j, long j2) {
            this.name = str;
            this.usage = j;
            this.limit = j2;
        }
    }

    public Quota(String str) {
        this.quotaRoot = str;
    }

    public void setResourceLimit(String str, long j) {
        if (this.resources == null) {
            this.resources = new Resource[]{new Resource(str, 0L, j)};
            return;
        }
        int i = 0;
        while (true) {
            Resource[] resourceArr = this.resources;
            if (i >= resourceArr.length) {
                int length = resourceArr.length + 1;
                Resource[] resourceArr2 = new Resource[length];
                System.arraycopy(resourceArr, 0, resourceArr2, 0, resourceArr.length);
                resourceArr2[length - 1] = new Resource(str, 0L, j);
                this.resources = resourceArr2;
                return;
            }
            if (resourceArr[i].name.equalsIgnoreCase(str)) {
                this.resources[i].limit = j;
                return;
            }
            i++;
        }
    }
}
