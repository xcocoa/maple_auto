.class public abstract Ljavax/mail/internet/MailDateFormat$AbstractDateParser;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/MailDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractDateParser"
.end annotation


# static fields
.field public static final INVALID_CHAR:I = -0x1

.field public static final MAX_YEAR_DIGITS:I = 0x8


# instance fields
.field public final pos:Ljava/text/ParsePosition;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iput-object p2, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    return-void
.end method


# virtual methods
.method public final getAsciiDigit()I
    .locals 3

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->getChar()I

    move-result v0

    const/16 v1, 0x30

    if-gt v1, v0, :cond_0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    int-to-char v0, v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    return v0

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_1
    return v1
.end method

.method public final getChar()I
    .locals 3

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isValidZoneOffset(I)Z
    .locals 1

    rem-int/lit8 p1, p1, 0x64

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final parse()Ljava/util/Date;
    .locals 6

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->tryParse()Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Ljavax/mail/internet/MailDateFormat;->access$000()Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljavax/mail/internet/MailDateFormat;->access$000()Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad date: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final parseAsciiDigits(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->parseAsciiDigits(II)I

    move-result p1

    return p1
.end method

.method public final parseAsciiDigits(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->parseAsciiDigits(IIZ)I

    move-result p1

    return p1
.end method

.method public final parseAsciiDigits(IIZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->peekAsciiDigit()Z

    move-result v2

    if-eqz v2, :cond_0

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->getAsciiDigit()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lt v0, p1, :cond_2

    if-ne v0, p2, :cond_1

    if-nez p3, :cond_1

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->peekAsciiDigit()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    iget-object p3, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    if-ne p1, p2, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "between "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    new-instance p2, Ljava/text/ParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid input: expected "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ASCII digits"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result p3

    invoke-direct {p2, p1, p3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public final parseChar(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid input: expected \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final parseDayName()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->getChar()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "Invalid day-name"

    if-eq v0, v1, :cond_7

    const/16 v1, 0x46

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5

    const/16 v1, 0x4d

    const/16 v4, 0x6e

    if-eq v0, v1, :cond_4

    const/16 v1, 0x57

    const/16 v5, 0x65

    if-eq v0, v1, :cond_3

    const/16 v1, 0x53

    const/16 v6, 0x75

    if-eq v0, v1, :cond_1

    const/16 v1, 0x54

    if-ne v0, v1, :cond_6

    invoke-virtual {p0, v6, v5}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/16 v0, 0x68

    invoke-virtual {p0, v0, v6}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    return v0

    :cond_1
    invoke-virtual {p0, v6, v4}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    const/16 v0, 0x61

    const/16 v1, 0x74

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    return v0

    :cond_3
    const/16 v0, 0x64

    invoke-virtual {p0, v5, v0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    return v0

    :cond_4
    const/16 v0, 0x6f

    invoke-virtual {p0, v0, v4}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    return v0

    :cond_5
    const/16 v0, 0x72

    const/16 v1, 0x69

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    return v0

    :cond_6
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final parseFoldingWhiteSpace()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipFoldingWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    const-string v2, "Invalid input: expected FWS"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final parseMonthName(Z)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->getChar()I

    move-result v1

    const/16 v2, 0x52

    const/16 v3, 0x50

    const/16 v4, 0x41

    const/16 v5, 0x43

    const/16 v6, 0x55

    const-string v7, "Invalid month"

    const/16 v8, 0x45

    const/16 v9, 0x72

    const/16 v10, 0x61

    const/16 v11, 0x75

    const/16 v12, 0x70

    const/16 v13, 0x63

    const/4 v14, 0x1

    const/16 v15, 0x65

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_d

    :sswitch_0
    if-nez p1, :cond_13

    goto :goto_0

    :sswitch_1
    if-nez p1, :cond_13

    goto :goto_1

    :sswitch_2
    if-nez p1, :cond_13

    goto :goto_2

    :sswitch_3
    if-nez p1, :cond_13

    goto :goto_3

    :sswitch_4
    if-nez p1, :cond_13

    goto/16 :goto_5

    :sswitch_5
    if-nez p1, :cond_13

    goto/16 :goto_9

    :sswitch_6
    if-nez p1, :cond_13

    goto/16 :goto_a

    :sswitch_7
    if-nez p1, :cond_13

    goto/16 :goto_b

    :goto_0
    :sswitch_8
    invoke-virtual {v0, v15, v12}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_13

    invoke-virtual {v0, v15, v8, v12, v3}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_0
    const/16 v1, 0x8

    return v1

    :goto_1
    :sswitch_9
    const/16 v1, 0x74

    invoke-virtual {v0, v13, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p1, :cond_13

    const/16 v2, 0x54

    invoke-virtual {v0, v13, v5, v1, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_1
    const/16 v1, 0x9

    return v1

    :goto_2
    :sswitch_a
    const/16 v1, 0x6f

    const/16 v2, 0x76

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p1, :cond_13

    const/16 v3, 0x4f

    const/16 v4, 0x56

    invoke-virtual {v0, v1, v3, v2, v4}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_2
    const/16 v1, 0xa

    return v1

    :goto_3
    :sswitch_b
    invoke-virtual {v0, v10}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p1, :cond_13

    invoke-virtual {v0, v4}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_3
    invoke-virtual {v0, v9}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-nez v1, :cond_6

    if-nez p1, :cond_4

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez p1, :cond_b

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_5
    const/4 v1, 0x4

    return v1

    :cond_6
    :goto_4
    const/4 v1, 0x2

    return v1

    :goto_5
    :sswitch_c
    invoke-virtual {v0, v11}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    const/16 v2, 0x4e

    const/16 v3, 0x6e

    if-nez v1, :cond_9

    if-nez p1, :cond_7

    invoke-virtual {v0, v6}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v0, v10, v3}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v1

    if-nez v1, :cond_8

    if-nez p1, :cond_13

    invoke-virtual {v0, v10, v4, v3, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_8
    const/4 v1, 0x0

    return v1

    :cond_9
    :goto_6
    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-nez v1, :cond_d

    if-nez p1, :cond_a

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v0, v3}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-nez v1, :cond_c

    if-nez p1, :cond_b

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    iget-object v1, v0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    sub-int/2addr v2, v14

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_d

    :cond_c
    :goto_7
    const/4 v1, 0x5

    return v1

    :cond_d
    :goto_8
    const/4 v1, 0x6

    return v1

    :goto_9
    :sswitch_d
    const/16 v1, 0x62

    invoke-virtual {v0, v15, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v2

    if-nez v2, :cond_e

    if-nez p1, :cond_13

    const/16 v2, 0x42

    invoke-virtual {v0, v15, v8, v1, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_e
    return v14

    :goto_a
    :sswitch_e
    invoke-virtual {v0, v15, v13}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v1

    if-nez v1, :cond_f

    if-nez p1, :cond_13

    invoke-virtual {v0, v15, v8, v13, v5}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_f
    const/16 v1, 0xb

    return v1

    :goto_b
    :sswitch_f
    const/16 v1, 0x67

    invoke-virtual {v0, v11, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v4

    if-nez v4, :cond_12

    if-nez p1, :cond_10

    const/16 v4, 0x47

    invoke-virtual {v0, v11, v6, v1, v4}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_c

    :cond_10
    invoke-virtual {v0, v12, v9}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v1

    if-nez v1, :cond_11

    if-nez p1, :cond_13

    invoke-virtual {v0, v12, v3, v9, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_11
    const/4 v1, 0x3

    return v1

    :cond_12
    :goto_c
    const/4 v1, 0x7

    return v1

    :sswitch_10
    new-instance v1, Ljava/text/ParseException;

    iget-object v2, v0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {v1, v7, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_13
    :goto_d
    iget-object v1, v0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    sub-int/2addr v2, v14

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    new-instance v1, Ljava/text/ParseException;

    iget-object v2, v0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-direct {v1, v7, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_10
        0x41 -> :sswitch_f
        0x44 -> :sswitch_e
        0x46 -> :sswitch_d
        0x4a -> :sswitch_c
        0x4d -> :sswitch_b
        0x4e -> :sswitch_a
        0x4f -> :sswitch_9
        0x53 -> :sswitch_8
        0x61 -> :sswitch_7
        0x64 -> :sswitch_6
        0x66 -> :sswitch_5
        0x6a -> :sswitch_4
        0x6d -> :sswitch_3
        0x6e -> :sswitch_2
        0x6f -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method public final parseZoneOffset()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->getChar()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "Invalid zone"

    const/16 v3, 0x2b

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_1
    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    :goto_0
    const/4 v5, 0x4

    invoke-virtual {p0, v5, v5, v4}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->parseAsciiDigits(IIZ)I

    move-result v5

    invoke-virtual {p0, v5}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->isValidZoneOffset(I)Z

    move-result v6

    if-eqz v6, :cond_4

    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    div-int/lit8 v0, v5, 0x64

    mul-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v5, v5, 0x64

    add-int/2addr v0, v5

    mul-int v1, v1, v0

    return v1

    :cond_4
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    new-instance v0, Ljava/text/ParseException;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final peekAsciiDigit()Z
    .locals 3

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x30

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final peekChar(C)Z
    .locals 2

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public peekFoldingWhiteSpace()Z
    .locals 2

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final skipAlternative(CC)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final skipAlternativePair(CCCC)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternative(CC)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p4}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternative(CC)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final skipAlternativeTriple(CCCCCC)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternativePair(CCCC)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p5, p6}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternative(CC)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final skipChar(C)Z
    .locals 2

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->text:Ljava/lang/String;

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public skipFoldingWhiteSpace()Z
    .locals 4

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->peekFoldingWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->peekFoldingWhiteSpace()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipWhiteSpace()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipNewline()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipWhiteSpace()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    iget-object v2, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    return v1

    :cond_5
    return v2

    :cond_6
    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipNewline()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipWhiteSpace()Z

    move-result v3

    if-eqz v3, :cond_4

    return v2
.end method

.method public final skipNewline()Z
    .locals 2

    const/16 v0, 0xd

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipPair(CC)Z

    move-result v0

    return v0
.end method

.method public final skipPair(CC)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipChar(C)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final skipWhiteSpace()Z
    .locals 3

    iget-object v0, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    :cond_0
    const/16 v1, 0x20

    const/16 v2, 0x9

    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->skipAlternative(CC)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljavax/mail/internet/MailDateFormat$AbstractDateParser;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public abstract tryParse()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
