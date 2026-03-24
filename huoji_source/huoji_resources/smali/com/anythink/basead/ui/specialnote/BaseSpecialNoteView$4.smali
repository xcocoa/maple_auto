.class public final Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$4;
.super Lcom/anythink/core/common/o/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$4;->a:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    invoke-direct {p0}, Lcom/anythink/core/common/o/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getImpressionMinPercentageViewed()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method

.method public final recordImpression(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$4;->a:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    invoke-static {p1}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->b(Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;)V

    return-void
.end method
