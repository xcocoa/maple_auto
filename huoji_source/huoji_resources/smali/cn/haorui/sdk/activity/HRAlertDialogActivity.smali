.class public Lcn/haorui/sdk/activity/HRAlertDialogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/haorui/sdk/activity/HRAlertDialogActivity$CancelHandler;,
        Lcn/haorui/sdk/activity/HRAlertDialogActivity$ConfirmHandler;
    }
.end annotation


# static fields
.field private static cancelHandler:Lcn/haorui/sdk/activity/HRAlertDialogActivity$CancelHandler;

.field private static confirmHandler:Lcn/haorui/sdk/activity/HRAlertDialogActivity$ConfirmHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static setCancelHandler(Lcn/haorui/sdk/activity/HRAlertDialogActivity$CancelHandler;)V
    .locals 0

    sput-object p0, Lcn/haorui/sdk/activity/HRAlertDialogActivity;->cancelHandler:Lcn/haorui/sdk/activity/HRAlertDialogActivity$CancelHandler;

    return-void
.end method

.method public static setConfirmHandler(Lcn/haorui/sdk/activity/HRAlertDialogActivity$ConfirmHandler;)V
    .locals 0

    sput-object p0, Lcn/haorui/sdk/activity/HRAlertDialogActivity;->confirmHandler:Lcn/haorui/sdk/activity/HRAlertDialogActivity$ConfirmHandler;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcn/haorui/sdk/R$id;->adsail_cancel_button:I

    if-ne p1, v0, :cond_0

    sget-object p1, Lcn/haorui/sdk/activity/HRAlertDialogActivity;->cancelHandler:Lcn/haorui/sdk/activity/HRAlertDialogActivity$CancelHandler;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcn/haorui/sdk/activity/HRAlertDialogActivity$CancelHandler;->handle()V

    goto :goto_0

    :cond_0
    sget v0, Lcn/haorui/sdk/R$id;->adsail_confirm_button:I

    if-ne p1, v0, :cond_1

    sget-object p1, Lcn/haorui/sdk/activity/HRAlertDialogActivity;->confirmHandler:Lcn/haorui/sdk/activity/HRAlertDialogActivity$ConfirmHandler;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcn/haorui/sdk/activity/HRAlertDialogActivity$ConfirmHandler;->handle()V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    sget p1, Lcn/haorui/sdk/R$layout;->adsail_activity_alert_dialog:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget p1, Lcn/haorui/sdk/R$id;->adsail_cancel_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lcn/haorui/sdk/R$id;->adsail_confirm_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lcn/haorui/sdk/activity/HRAlertDialogActivity;->confirmHandler:Lcn/haorui/sdk/activity/HRAlertDialogActivity$ConfirmHandler;

    sput-object v0, Lcn/haorui/sdk/activity/HRAlertDialogActivity;->cancelHandler:Lcn/haorui/sdk/activity/HRAlertDialogActivity$CancelHandler;

    return-void
.end method
