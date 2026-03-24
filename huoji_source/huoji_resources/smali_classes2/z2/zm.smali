.class public final Lz2/zm;
.super Lz2/jn;
.source ""


# static fields
.field private static final OooOOO:[J

.field private static final OooOOO0:Ljava/util/regex/Pattern;

.field private static final OooOOOO:Ljava/util/regex/Pattern;


# instance fields
.field private final OooO:[Ljava/lang/String;

.field private final OooO0O0:Ljava/lang/String;

.field private final OooO0OO:J

.field private final OooO0Oo:Z

.field private final OooO0o:Z

.field private final OooO0o0:J

.field private final OooO0oO:Ljava/lang/String;

.field private final OooO0oo:Ljava/lang/String;

.field private final OooOO0:Ljava/lang/String;

.field private final OooOO0O:D

.field private final OooOO0o:D


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "P(?:(\\d+)W)?(?:(\\d+)D)?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+)S)?)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz2/zm;->OooOOO0:Ljava/util/regex/Pattern;

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lz2/zm;->OooOOO:[J

    const-string v0, "[0-9]{8}(T[0-9]{6}Z?)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz2/zm;->OooOOOO:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 8
        0x240c8400
        0x5265c00
        0x36ee80
        0xea60
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 8

    move-object v1, p0

    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->CALENDAR:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lz2/jn;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    move-object v0, p1

    iput-object v0, v1, Lz2/zm;->OooO0O0:Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lz2/zm;->OooOOoo(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lz2/zm;->OooO0OO:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p3, :cond_1

    invoke-static {p4}, Lz2/zm;->OooOo0(Ljava/lang/CharSequence;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_0

    :cond_0
    add-long/2addr v2, v4

    :goto_0
    iput-wide v2, v1, Lz2/zm;->OooO0o0:J

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {p3}, Lz2/zm;->OooOOoo(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lz2/zm;->OooO0o0:J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v1, Lz2/zm;->OooO0Oo:Z

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, v1, Lz2/zm;->OooO0o:Z

    move-object v0, p5

    iput-object v0, v1, Lz2/zm;->OooO0oO:Ljava/lang/String;

    move-object v0, p6

    iput-object v0, v1, Lz2/zm;->OooO0oo:Ljava/lang/String;

    move-object v0, p7

    iput-object v0, v1, Lz2/zm;->OooO:[Ljava/lang/String;

    move-object/from16 v0, p8

    iput-object v0, v1, Lz2/zm;->OooOO0:Ljava/lang/String;

    move-wide/from16 v2, p9

    iput-wide v2, v1, Lz2/zm;->OooOO0O:D

    move-wide/from16 v2, p11

    iput-wide v2, v1, Lz2/zm;->OooOO0o:D

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static OooO0o0(ZJ)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-eqz p0, :cond_1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p0

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static OooOOoo(Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-object v0, Lz2/zm;->OooOOOO:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyyMMdd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz2/zm;->OooOo00(Ljava/lang/String;)J

    move-result-wide v3

    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v3, v0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    add-long/2addr v3, v0

    return-wide v3

    :cond_1
    invoke-static {p0}, Lz2/zm;->OooOo00(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    new-instance v0, Ljava/text/ParseException;

    invoke-direct {v0, p0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static OooOo0(Ljava/lang/CharSequence;)J
    .locals 7

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    sget-object v2, Lz2/zm;->OooOOO0:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lz2/zm;->OooOOO:[J

    array-length v4, v3

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    aget-wide v2, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    mul-long v2, v2, v5

    add-long/2addr v0, v2

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    return-wide v0
.end method

.method private static OooOo00(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final OooO()J
    .locals 2

    iget-wide v0, p0, Lz2/zm;->OooO0o0:J

    return-wide v0
.end method

.method public final OooO00o()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lz2/zm;->OooO0O0:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v1, p0, Lz2/zm;->OooO0Oo:Z

    iget-wide v2, p0, Lz2/zm;->OooO0OO:J

    invoke-static {v1, v2, v3}, Lz2/zm;->OooO0o0(ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v1, p0, Lz2/zm;->OooO0o:Z

    iget-wide v2, p0, Lz2/zm;->OooO0o0:J

    invoke-static {v1, v2, v3}, Lz2/zm;->OooO0o0(ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/zm;->OooO0oO:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/zm;->OooO0oo:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/zm;->OooO:[Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0Oo([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lz2/zm;->OooOO0:Ljava/lang/String;

    invoke-static {v1, v0}, Lz2/jn;->OooO0OO(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final OooO0o()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/zm;->OooO:[Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/zm;->OooOO0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oo()Ljava/util/Date;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lz2/zm;->OooO0o0:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lz2/zm;->OooO0o0:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final OooOO0()D
    .locals 2

    iget-wide v0, p0, Lz2/zm;->OooOO0O:D

    return-wide v0
.end method

.method public final OooOO0O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/zm;->OooO0oO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0o()D
    .locals 2

    iget-wide v0, p0, Lz2/zm;->OooOO0o:D

    return-wide v0
.end method

.method public final OooOOO()Ljava/util/Date;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lz2/zm;->OooO0OO:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final OooOOO0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/zm;->OooO0oo:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOOO()J
    .locals 2

    iget-wide v0, p0, Lz2/zm;->OooO0OO:J

    return-wide v0
.end method

.method public final OooOOOo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lz2/zm;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOOo()Z
    .locals 1

    iget-boolean v0, p0, Lz2/zm;->OooO0Oo:Z

    return v0
.end method

.method public final OooOOo0()Z
    .locals 1

    iget-boolean v0, p0, Lz2/zm;->OooO0o:Z

    return v0
.end method
