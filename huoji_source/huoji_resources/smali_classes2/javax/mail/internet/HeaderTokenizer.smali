.class public Ljavax/mail/internet/HeaderTokenizer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/HeaderTokenizer$Token;
    }
.end annotation


# static fields
.field private static final EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

.field public static final MIME:Ljava/lang/String; = "()<>@,;:\\\"\t []/?="

.field public static final RFC822:Ljava/lang/String; = "()<>@,;:\\\"\t .[]"


# instance fields
.field private currentPos:I

.field private delimiters:Ljava/lang/String;

.field private maxPos:I

.field private nextPos:I

.field private peekPos:I

.field private skipComments:Z

.field private string:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v1, -0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    sput-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "()<>@,;:\\\"\t .[]"

    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iput-boolean p3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput p2, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput p2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    return-void
.end method

.method private collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    const/4 v4, -0x2

    const/16 v5, 0x22

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    const/4 v6, 0x1

    if-ne v2, v3, :cond_0

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v1, v6

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_1
    const/4 v1, 0x1

    goto :goto_3

    :cond_0
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-ne v2, p1, :cond_4

    iget p1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr p1, v6

    iput p1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    sub-int/2addr p1, v6

    invoke-static {v1, v0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    sub-int/2addr p1, v6

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-eq v2, v5, :cond_3

    invoke-static {p1}, Ljavax/mail/internet/HeaderTokenizer;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr p2, v6

    iput p2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :cond_3
    new-instance p2, Ljavax/mail/internet/HeaderTokenizer$Token;

    invoke-direct {p2, v4, p1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object p2

    :cond_4
    :goto_3
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v2, v6

    iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_0

    :cond_5
    if-eq p1, v5, :cond_7

    iget-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-static {p1, v0, v2, p2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Ljavax/mail/internet/HeaderTokenizer;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljavax/mail/internet/HeaderTokenizer$Token;

    invoke-direct {p2, v4, p1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object p2

    :cond_7
    new-instance p1, Ljavax/mail/internet/ParseException;

    const-string p2, "Unbalanced quoted string"

    invoke-direct {p1, p2}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge p1, p2, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    if-eqz v2, :cond_0

    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_0
    const/16 v2, 0x5c

    if-nez v3, :cond_3

    if-ne v4, v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/16 v2, 0xd

    if-ne v4, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNext(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-lt v0, v1, :cond_0

    sget-object p1, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object p1

    :cond_0
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    sget-object p1, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object p1

    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x28

    const/4 v5, 0x1

    if-ne v0, v4, :cond_b

    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v0, v5

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    const/4 v6, 0x1

    :goto_1
    if-lez v6, :cond_6

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v8, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v7, v8, :cond_6

    iget-object v8, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_2

    iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v3, v5

    iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    const/16 v8, 0xd

    if-ne v7, v8, :cond_3

    goto :goto_2

    :cond_3
    if-ne v7, v4, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const/16 v8, 0x29

    if-ne v7, v8, :cond_5

    add-int/lit8 v6, v6, -0x1

    :cond_5
    :goto_3
    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v7, v5

    iput v7, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_1

    :cond_6
    if-nez v6, :cond_a

    iget-boolean v4, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z

    if-nez v4, :cond_8

    iget-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr v1, v5

    invoke-static {p1, v0, v1, p2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    iget p2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    sub-int/2addr p2, v5

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_4
    new-instance p2, Ljavax/mail/internet/HeaderTokenizer$Token;

    const/4 v0, -0x3

    invoke-direct {p2, v0, p1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object p2

    :cond_8
    invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I

    move-result v0

    if-ne v0, v1, :cond_9

    sget-object p1, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;

    return-object p1

    :cond_9
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_a
    new-instance p1, Ljavax/mail/internet/ParseException;

    const-string p2, "Unbalanced comments"

    invoke-direct {p1, p2}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const/16 v1, 0x22

    if-ne v0, v1, :cond_c

    iget p1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr p1, v5

    iput p1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-direct {p0, v1, p2}, Ljavax/mail/internet/HeaderTokenizer;->collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object p1

    return-object p1

    :cond_c
    const/16 v3, 0x20

    if-lt v0, v3, :cond_11

    const/16 v6, 0x7f

    if-ge v0, v6, :cond_11

    iget-object v7, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_d

    goto :goto_7

    :cond_d
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    :goto_5
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v7, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v2, v7, :cond_10

    iget-object v7, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v3, :cond_f

    if-ge v2, v6, :cond_f

    if-eq v2, v4, :cond_f

    if-eq v2, v3, :cond_f

    if-eq v2, v1, :cond_f

    iget-object v7, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_e

    goto :goto_6

    :cond_e
    iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr v2, v5

    iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_5

    :cond_f
    :goto_6
    if-lez p1, :cond_10

    if-eq v2, p1, :cond_10

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object p1

    return-object p1

    :cond_10
    new-instance p1, Ljavax/mail/internet/HeaderTokenizer$Token;

    iget-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-direct {p1, v0, p2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_11
    :goto_7
    if-lez p1, :cond_12

    if-eq v0, p1, :cond_12

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->collectString(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object p1

    return-object p1

    :cond_12
    iget p1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/2addr p1, v5

    iput p1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    new-array p1, v5, [C

    aput-char v0, p1, v2

    new-instance p2, Ljavax/mail/internet/HeaderTokenizer$Token;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p2, v0, v1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V

    return-object p2
.end method

.method private skipWhiteSpace()I
    .locals 2

    :goto_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    return v0

    :cond_0
    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x4

    return v0
.end method

.method private static trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-gtz v0, :cond_2

    const-string p0, ""

    return-object p0

    :cond_2
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRemainder()Ljava/lang/String;
    .locals 2

    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Ljavax/mail/internet/HeaderTokenizer;->next(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    return-object v0
.end method

.method public next(C)Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;->next(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object p1

    return-object p1
.end method

.method public next(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/HeaderTokenizer;->getNext(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object p1

    iget p2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput p2, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput p2, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I

    return-object p1
.end method

.method public peek()Ljavax/mail/internet/HeaderTokenizer$Token;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Ljavax/mail/internet/HeaderTokenizer;->getNext(CZ)Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v0

    iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I

    iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I

    return-object v0
.end method
