.class public Lcn/haorui/sdk/core/loader/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/core/loader/g$d;,
        Lcn/haorui/sdk/core/loader/g$c;
    }
.end annotation


# static fields
.field public static z:D = 20.0


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J

.field public e:Landroid/hardware/SensorManager;

.field public f:Z

.field public g:F

.field public h:[F

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/haorui/sdk/platform/hr/splash/ShakeBean;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public k:Ljava/lang/String;

.field public l:J

.field public m:Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

.field public n:I

.field public o:D

.field public p:Z

.field public q:J

.field public r:I

.field public s:Landroid/hardware/SensorEventListener;

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->b:I

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->c:I

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcn/haorui/sdk/core/loader/g;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/core/loader/g;->f:Z

    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcn/haorui/sdk/core/loader/g;->h:[F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->j:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/haorui/sdk/core/loader/g;->q:J

    new-instance v0, Lcn/haorui/sdk/core/loader/g$a;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/core/loader/g$a;-><init>(Lcn/haorui/sdk/core/loader/g;)V

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/g;->s:Landroid/hardware/SensorEventListener;

    const/4 v0, 0x0

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->t:F

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->u:F

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->v:F

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->w:F

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->x:F

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->y:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "ShakeUtil"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcn/haorui/sdk/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/core/loader/g;->f:Z

    const/4 v0, 0x0

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->g:F

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/g;->e:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/g;->s:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/haorui/sdk/core/loader/g;->e:Landroid/hardware/SensorManager;

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->getShakeId()I

    move-result v1

    if-ne p1, v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    new-instance v0, Lcn/haorui/sdk/core/loader/g$b;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/core/loader/g$b;-><init>(Lcn/haorui/sdk/core/loader/g;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;

    sget v0, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->SHAKE_STATUS_USEABLE:I

    invoke-virtual {p1, v0}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->setStatus(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/g;->a()V

    :goto_1
    return-void

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcn/haorui/sdk/core/loader/g;->a()V

    return-void
.end method

.method public a(IIJIIILcn/haorui/sdk/core/loader/g$d;)V
    .locals 4

    iput p1, p0, Lcn/haorui/sdk/core/loader/g;->a:I

    iput-wide p3, p0, Lcn/haorui/sdk/core/loader/g;->d:J

    iput p5, p0, Lcn/haorui/sdk/core/loader/g;->c:I

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcn/haorui/sdk/core/loader/g;->p:Z

    iput p2, p0, Lcn/haorui/sdk/core/loader/g;->b:I

    new-instance p2, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;

    invoke-direct {p2}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;-><init>()V

    sget p4, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->SHAKE_STATUS_USEABLE:I

    invoke-virtual {p2, p4}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->setStatus(I)V

    iget-object p4, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_1

    iget-object p4, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;

    invoke-virtual {p5}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->getEcpm()I

    move-result p5

    if-le p5, p7, :cond_0

    sget p5, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->SHAKE_STATUS_WAIT:I

    invoke-virtual {p2, p5}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->setStatus(I)V

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcn/haorui/sdk/core/loader/g;->h:[F

    const/4 p5, 0x0

    aput p5, p4, p3

    const/4 p3, 0x1

    aput p5, p4, p3

    const/4 v0, 0x2

    aput p5, p4, v0

    iput p5, p0, Lcn/haorui/sdk/core/loader/g;->g:F

    iput p5, p0, Lcn/haorui/sdk/core/loader/g;->t:F

    iput p5, p0, Lcn/haorui/sdk/core/loader/g;->u:F

    iput p5, p0, Lcn/haorui/sdk/core/loader/g;->v:F

    iput p5, p0, Lcn/haorui/sdk/core/loader/g;->w:F

    iput p5, p0, Lcn/haorui/sdk/core/loader/g;->x:F

    iput p5, p0, Lcn/haorui/sdk/core/loader/g;->y:F

    invoke-virtual {p2, p6}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->setShakeId(I)V

    invoke-virtual {p2, p7}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->setEcpm(I)V

    invoke-virtual {p2, p8}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->setListener(Lcn/haorui/sdk/core/loader/g$d;)V

    invoke-virtual {p2, p1}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->setSensitivity_index(I)V

    iget p4, p0, Lcn/haorui/sdk/core/loader/g;->b:I

    invoke-virtual {p2, p4}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->setTouch_type(I)V

    invoke-virtual {p2, p3}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->setIsShowing(Z)V

    iget-object p4, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/high16 p4, 0x4059000000000000L    # 100.0

    const/16 p2, 0x64

    const-wide/high16 p6, 0x4000000000000000L    # 2.0

    if-lt p1, p3, :cond_2

    if-gt p1, p2, :cond_2

    int-to-double v0, p1

    const-wide v2, 0x4056800000000000L    # 90.0

    mul-double v0, v0, v2

    div-double/2addr v0, p4

    sput-wide v0, Lcn/haorui/sdk/core/loader/g;->z:D

    cmpg-double p1, v0, p6

    if-gez p1, :cond_3

    sput-wide p6, Lcn/haorui/sdk/core/loader/g;->z:D

    goto :goto_1

    :cond_2
    const/16 p1, 0x32

    iput p1, p0, Lcn/haorui/sdk/core/loader/g;->a:I

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    sput-wide v0, Lcn/haorui/sdk/core/loader/g;->z:D

    :cond_3
    :goto_1
    :try_start_0
    sget-object p1, Lcn/haorui/sdk/core/utils/RecordUtil;->recordClickMap:Ljava/util/HashMap;

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/g;->k:Ljava/lang/String;

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcn/haorui/sdk/core/loader/g;->l:J

    invoke-virtual {p8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p1, p8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;->isClicked()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcn/haorui/sdk/core/loader/g;->m:Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;->getPower()I

    move-result p1

    iget-object p8, p0, Lcn/haorui/sdk/core/loader/g;->m:Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    invoke-virtual {p8}, Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;->getPtime()I

    move-result p8

    if-lez p8, :cond_5

    iget v0, p0, Lcn/haorui/sdk/core/loader/g;->a:I

    if-ge p1, v0, :cond_5

    iput p8, p0, Lcn/haorui/sdk/core/loader/g;->r:I

    iput-boolean p3, p0, Lcn/haorui/sdk/core/loader/g;->p:Z

    invoke-static {}, Lcn/haorui/sdk/core/AdSdk;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p8

    const-string v0, "last_dynamic_time"

    const-wide/16 v1, 0x0

    invoke-interface {p8, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/haorui/sdk/core/loader/g;->q:J

    if-lt p1, p3, :cond_5

    if-gt p1, p2, :cond_5

    iput p1, p0, Lcn/haorui/sdk/core/loader/g;->n:I

    int-to-double p1, p1

    const-wide v0, 0x4046800000000000L    # 45.0

    mul-double p1, p1, v0

    div-double/2addr p1, p4

    iput-wide p1, p0, Lcn/haorui/sdk/core/loader/g;->o:D

    cmpg-double p3, p1, p6

    if-gez p3, :cond_5

    iput-wide p6, p0, Lcn/haorui/sdk/core/loader/g;->o:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method public a(IZ)V
    .locals 3

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->getShakeId()I

    move-result v2

    if-ne p1, v2, :cond_1

    invoke-virtual {v1, p2}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->setIsShowing(Z)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;JLcn/haorui/sdk/core/domain/HRAdInfo$DClickData;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/core/loader/g;->k:Ljava/lang/String;

    iput-wide p2, p0, Lcn/haorui/sdk/core/loader/g;->l:J

    iput-object p4, p0, Lcn/haorui/sdk/core/loader/g;->m:Lcn/haorui/sdk/core/domain/HRAdInfo$DClickData;

    return-void
.end method

.method public a(Z)V
    .locals 3

    iput-boolean p1, p0, Lcn/haorui/sdk/core/loader/g;->f:Z

    :try_start_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcn/haorui/sdk/core/loader/f;

    invoke-direct {v0, p0}, Lcn/haorui/sdk/core/loader/f;-><init>(Lcn/haorui/sdk/core/loader/g;)V

    iget-wide v1, p0, Lcn/haorui/sdk/core/loader/g;->d:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide v2, 0x416312d000000000L    # 1.0E7

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public final c()V
    .locals 5

    sget-object v0, Lcn/haorui/sdk/core/utils/RecordUtil;->recordClickMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/g;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/haorui/sdk/core/loader/g;->l:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;

    const/4 v1, 0x7

    const/4 v2, 0x5

    if-nez v0, :cond_0

    new-instance v0, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;

    invoke-direct {v0}, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;->setDynamicClick(Z)V

    :goto_0
    iget-object v3, p0, Lcn/haorui/sdk/core/loader/g;->k:Ljava/lang/String;

    invoke-static {v3, v2}, Lcn/haorui/sdk/core/utils/RecordUtil;->saveAction(Ljava/lang/String;I)V

    iget-object v2, p0, Lcn/haorui/sdk/core/loader/g;->k:Ljava/lang/String;

    invoke-static {v2, v1}, Lcn/haorui/sdk/core/utils/RecordUtil;->saveAction(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcn/haorui/sdk/core/utils/RecordUtil$RecordClick;->isClicked()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v1, Lcn/haorui/sdk/core/utils/RecordUtil;->recordClickMap:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/haorui/sdk/core/loader/g;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcn/haorui/sdk/core/loader/g;->l:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/core/loader/g;->f:Z

    const/4 v0, 0x0

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->t:F

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->u:F

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->v:F

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->w:F

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->x:F

    iput v0, p0, Lcn/haorui/sdk/core/loader/g;->y:F

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->getIsShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->getStatus()I

    move-result v2

    sget v3, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->SHAKE_STATUS_USEABLE:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->getListener()Lcn/haorui/sdk/core/loader/g$d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->getListener()Lcn/haorui/sdk/core/loader/g$d;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/g$d;->onShake()V

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/haorui/sdk/core/loader/g;->f:Z

    iget-object v1, p0, Lcn/haorui/sdk/core/loader/g;->h:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    const/4 v0, 0x1

    aput v2, v1, v0

    const/4 v0, 0x2

    aput v2, v1, v0

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->getIsShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->getStatus()I

    move-result v2

    sget v3, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->SHAKE_STATUS_USEABLE:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->getListener()Lcn/haorui/sdk/core/loader/g$d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcn/haorui/sdk/platform/hr/splash/ShakeBean;->getListener()Lcn/haorui/sdk/core/loader/g$d;

    move-result-object v0

    invoke-interface {v0}, Lcn/haorui/sdk/core/loader/g$d;->onShake()V

    iget-object v0, p0, Lcn/haorui/sdk/core/loader/g;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final f()Z
    .locals 6

    iget-boolean v0, p0, Lcn/haorui/sdk/core/loader/g;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/haorui/sdk/core/loader/g;->q:J

    sub-long/2addr v2, v4

    iget v0, p0, Lcn/haorui/sdk/core/loader/g;->r:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
