package com.lidroid.xutils.task;

/* JADX INFO: loaded from: classes2.dex */
public class Node<T> {
    public Node<T> next;
    private PriorityObject<?> value;
    private boolean valueAsT = false;

    public Node(T t) {
        setValue(t);
    }

    public Priority getPriority() {
        return this.value.priority;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [T, com.lidroid.xutils.task.PriorityObject, com.lidroid.xutils.task.PriorityObject<?>] */
    public T getValue() {
        ?? r0 = (T) this.value;
        if (r0 == 0) {
            return null;
        }
        return this.valueAsT ? r0 : (T) r0.obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setValue(T t) {
        if (t == 0) {
            this.value = null;
        } else if (!(t instanceof PriorityObject)) {
            this.value = new PriorityObject<>(Priority.DEFAULT, t);
        } else {
            this.value = (PriorityObject) t;
            this.valueAsT = true;
        }
    }
}
