package javax.mail;

import java.util.EventListener;
import java.util.Vector;
import java.util.WeakHashMap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import javax.mail.event.MailEvent;

/* JADX INFO: loaded from: classes2.dex */
public class EventQueue implements Runnable {
    private static WeakHashMap<ClassLoader, EventQueue> appq;
    private Executor executor;
    private volatile BlockingQueue<QueueElement> q;

    public static class QueueElement {
        public MailEvent event;
        public Vector<? extends EventListener> vector;

        public QueueElement(MailEvent mailEvent, Vector<? extends EventListener> vector) {
            this.event = null;
            this.vector = null;
            this.event = mailEvent;
            this.vector = vector;
        }
    }

    public static class TerminatorEvent extends MailEvent {
        private static final long serialVersionUID = -2481895000841664111L;

        public TerminatorEvent() {
            super(new Object());
        }

        @Override // javax.mail.event.MailEvent
        public void dispatch(Object obj) {
            Thread.currentThread().interrupt();
        }
    }

    public EventQueue(Executor executor) {
        this.executor = executor;
    }

    public static synchronized EventQueue getApplicationEventQueue(Executor executor) {
        EventQueue eventQueue;
        ClassLoader contextClassLoader = Session.getContextClassLoader();
        if (appq == null) {
            appq = new WeakHashMap<>();
        }
        eventQueue = appq.get(contextClassLoader);
        if (eventQueue == null) {
            eventQueue = new EventQueue(executor);
            appq.put(contextClassLoader, eventQueue);
        }
        return eventQueue;
    }

    public synchronized void enqueue(MailEvent mailEvent, Vector<? extends EventListener> vector) {
        if (this.q == null) {
            this.q = new LinkedBlockingQueue();
            Executor executor = this.executor;
            if (executor != null) {
                executor.execute(this);
            } else {
                Thread thread = new Thread(this, "Jakarta-Mail-EventQueue");
                thread.setDaemon(true);
                thread.start();
            }
        }
        this.q.add(new QueueElement(mailEvent, vector));
    }

    @Override // java.lang.Runnable
    public void run() {
        BlockingQueue<QueueElement> blockingQueue = this.q;
        if (blockingQueue == null) {
            return;
        }
        while (true) {
            try {
                QueueElement queueElementTake = blockingQueue.take();
                MailEvent mailEvent = queueElementTake.event;
                Vector<? extends EventListener> vector = queueElementTake.vector;
                for (int i = 0; i < vector.size(); i++) {
                    try {
                        mailEvent.dispatch(vector.elementAt(i));
                    } catch (Throwable th) {
                        if (th instanceof InterruptedException) {
                            return;
                        }
                    }
                }
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    public synchronized void terminateQueue() {
        if (this.q != null) {
            Vector vector = new Vector();
            vector.setSize(1);
            this.q.add(new QueueElement(new TerminatorEvent(), vector));
            this.q = null;
        }
    }
}
