.class public final Lcom/anythink/expressad/mbbanner/a/a/b$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/expressad/mbbanner/a/a/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/expressad/mbbanner/a/a/b;


# direct methods
.method public constructor <init>(Lcom/anythink/expressad/mbbanner/a/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/expressad/mbbanner/a/a/b$1;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/expressad/mbbanner/a/a/b$1;->a:Lcom/anythink/expressad/mbbanner/a/a/b;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
