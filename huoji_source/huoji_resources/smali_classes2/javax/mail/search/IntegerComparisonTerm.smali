.class public abstract Ljavax/mail/search/IntegerComparisonTerm;
.super Ljavax/mail/search/ComparisonTerm;
.source ""


# static fields
.field private static final serialVersionUID:J = -0x60a39325f9860814L


# instance fields
.field public number:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljavax/mail/search/ComparisonTerm;-><init>()V

    iput p1, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    iput p2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljavax/mail/search/IntegerComparisonTerm;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/search/IntegerComparisonTerm;

    iget v0, v0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ne v0, v2, :cond_1

    invoke-super {p0, p1}, Ljavax/mail/search/ComparisonTerm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getComparison()I
    .locals 1

    iget v0, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    invoke-super {p0}, Ljavax/mail/search/ComparisonTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public match(I)Z
    .locals 3

    iget v0, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    return v2

    :pswitch_1
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-le p1, v0, :cond_1

    return v1

    :cond_1
    return v2

    :pswitch_2
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-eq p1, v0, :cond_2

    return v1

    :cond_2
    return v2

    :pswitch_3
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ne p1, v0, :cond_3

    return v1

    :cond_3
    return v2

    :pswitch_4
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ge p1, v0, :cond_4

    return v1

    :cond_4
    return v2

    :pswitch_5
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-gt p1, v0, :cond_5

    return v1

    :cond_5
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
