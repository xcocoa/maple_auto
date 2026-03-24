.class public Lcn/haorui/sdk/activity/HRDetailActivity$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/haorui/sdk/activity/HRDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcn/haorui/sdk/activity/HRDetailActivity;


# direct methods
.method public constructor <init>(Lcn/haorui/sdk/activity/HRDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity$4;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/16 p1, 0x2bd

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2be

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity$4;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRDetailActivity;->access$400(Lcn/haorui/sdk/activity/HRDetailActivity;)Lz2/o000;

    move-result-object p1

    sget p2, Lcn/haorui/sdk/R$id;->adsail_progress_loading:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o00Ooo()Lz2/o000O000;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcn/haorui/sdk/activity/HRDetailActivity$4;->this$0:Lcn/haorui/sdk/activity/HRDetailActivity;

    invoke-static {p1}, Lcn/haorui/sdk/activity/HRDetailActivity;->access$400(Lcn/haorui/sdk/activity/HRDetailActivity;)Lz2/o000;

    move-result-object p1

    sget p2, Lcn/haorui/sdk/R$id;->adsail_progress_loading:I

    invoke-virtual {p1, p2}, Lz2/o000O000;->o00oO0o(I)Lz2/o000O000;

    move-result-object p1

    check-cast p1, Lz2/o000;

    invoke-virtual {p1}, Lz2/o000O000;->o000o00()Lz2/o000O000;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
