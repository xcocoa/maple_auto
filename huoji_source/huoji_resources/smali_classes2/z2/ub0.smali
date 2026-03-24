.class public Lz2/ub0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static OooO:Lz2/ub0; = null

.field public static final OooO00o:Ljava/lang/String; = "dbname"

.field public static final OooO0O0:Ljava/lang/String; = "version"

.field public static final OooO0OO:Ljava/lang/String; = "list"

.field public static final OooO0Oo:Ljava/lang/String; = "mapping"

.field public static final OooO0o:Ljava/lang/String; = "storage"

.field public static final OooO0o0:Ljava/lang/String; = "cases"

.field public static final OooO0oO:Ljava/lang/String; = "value"

.field public static final OooO0oo:Ljava/lang/String; = "class"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private OooO00o()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/litepal/LitePalApplication;->OooO00o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, "litepal.xml"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v1, "litepal.xml file is missing. Please ensure it under assets folder."

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static OooO0O0()Lz2/sb0;
    .locals 1

    sget-object v0, Lz2/ub0;->OooO:Lz2/ub0;

    if-nez v0, :cond_0

    new-instance v0, Lz2/ub0;

    invoke-direct {v0}, Lz2/ub0;-><init>()V

    sput-object v0, Lz2/ub0;->OooO:Lz2/ub0;

    :cond_0
    sget-object v0, Lz2/ub0;->OooO:Lz2/ub0;

    invoke-direct {v0}, Lz2/ub0;->OooO0OO()Lz2/sb0;

    move-result-object v0

    return-object v0
.end method

.method private OooO0OO()Lz2/sb0;
    .locals 6

    :try_start_0
    new-instance v0, Lz2/sb0;

    invoke-direct {v0}, Lz2/sb0;-><init>()V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-direct {p0}, Lz2/ub0;->OooO00o()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "dbname"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "value"

    const-string v5, ""

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz2/sb0;->OooO(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lz2/sb0;->OooOO0O(I)V

    goto :goto_1

    :cond_2
    const-string v2, "mapping"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "class"

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz2/sb0;->OooO00o(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "cases"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz2/sb0;->OooO0oO(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "storage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lz2/sb0;->OooOO0(Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_6
    return-object v0

    :catch_0
    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v1, "IO exception happened"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v1, "can not parse the litepal.xml, check if it\'s in correct format"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private OooO0Oo()V
    .locals 3

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lz2/tb0;

    invoke-direct {v1}, Lz2/tb0;-><init>()V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {p0}, Lz2/ub0;->OooO00o()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v1, "IO exception happened"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v1, "parse configuration is failed"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v1, "can not parse the litepal.xml, check if it\'s in correct format"

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    new-instance v0, Lorg/litepal/exceptions/ParseConfigurationFileException;

    const-string v1, "litepal.xml file is missing. Please ensure it under assets folder."

    invoke-direct {v0, v1}, Lorg/litepal/exceptions/ParseConfigurationFileException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
