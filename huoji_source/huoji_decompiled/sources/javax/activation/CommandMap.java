package javax.activation;

import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CommandMap {
    private static CommandMap defaultCommandMap;
    private static Map<ClassLoader, CommandMap> map = new WeakHashMap();

    public static synchronized CommandMap getDefaultCommandMap() {
        CommandMap commandMap = defaultCommandMap;
        if (commandMap != null) {
            return commandMap;
        }
        ClassLoader contextClassLoader = SecuritySupport.getContextClassLoader();
        CommandMap mailcapCommandMap = map.get(contextClassLoader);
        if (mailcapCommandMap == null) {
            mailcapCommandMap = new MailcapCommandMap();
            map.put(contextClassLoader, mailcapCommandMap);
        }
        return mailcapCommandMap;
    }

    public static synchronized void setDefaultCommandMap(CommandMap commandMap) {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            try {
                securityManager.checkSetFactory();
            } catch (SecurityException e) {
                ClassLoader classLoader = CommandMap.class.getClassLoader();
                if (classLoader == null || classLoader.getParent() == null || classLoader != commandMap.getClass().getClassLoader()) {
                    throw e;
                }
            }
        }
        map.remove(SecuritySupport.getContextClassLoader());
        defaultCommandMap = commandMap;
    }

    public abstract DataContentHandler createDataContentHandler(String str);

    public DataContentHandler createDataContentHandler(String str, DataSource dataSource) {
        return createDataContentHandler(str);
    }

    public abstract CommandInfo[] getAllCommands(String str);

    public CommandInfo[] getAllCommands(String str, DataSource dataSource) {
        return getAllCommands(str);
    }

    public abstract CommandInfo getCommand(String str, String str2);

    public CommandInfo getCommand(String str, String str2, DataSource dataSource) {
        return getCommand(str, str2);
    }

    public String[] getMimeTypes() {
        return null;
    }

    public abstract CommandInfo[] getPreferredCommands(String str);

    public CommandInfo[] getPreferredCommands(String str, DataSource dataSource) {
        return getPreferredCommands(str);
    }
}
