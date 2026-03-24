.class public final Lcom/anythink/basead/ui/b/g$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/b/g;->a(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Lcom/anythink/basead/ui/b/g;


# direct methods
.method public constructor <init>(Lcom/anythink/basead/ui/b/g;IJJ)V
    .locals 0

    iput-object p1, p0, Lcom/anythink/basead/ui/b/g$1;->d:Lcom/anythink/basead/ui/b/g;

    iput p2, p0, Lcom/anythink/basead/ui/b/g$1;->a:I

    iput-wide p3, p0, Lcom/anythink/basead/ui/b/g$1;->b:J

    iput-wide p5, p0, Lcom/anythink/basead/ui/b/g$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/anythink/basead/ui/b/g$1;->d:Lcom/anythink/basead/ui/b/g;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/g;->i:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/anythink/basead/ui/b/g$1;->d:Lcom/anythink/basead/ui/b/g;

    iget-object v1, v0, Lcom/anythink/basead/ui/b/g;->i:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    iget-object v2, v0, Lcom/anythink/basead/ui/b/b;->d:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/anythink/basead/ui/b/g$1;->a:I

    new-instance v4, Lcom/anythink/basead/ui/b/g$1$1;

    invoke-direct {v4, p0}, Lcom/anythink/basead/ui/b/g$1$1;-><init>(Lcom/anythink/basead/ui/b/g$1;)V

    iget-wide v5, p0, Lcom/anythink/basead/ui/b/g$1;->b:J

    iget-wide v7, p0, Lcom/anythink/basead/ui/b/g$1;->c:J

    invoke-virtual/range {v1 .. v8}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->initSetting(Landroid/view/View;ILcom/anythink/basead/ui/specialnote/BaseSpecialNoteView$a;JJ)V

    iget-object v0, p0, Lcom/anythink/basead/ui/b/g$1;->d:Lcom/anythink/basead/ui/b/g;

    iget-object v1, v0, Lcom/anythink/basead/ui/b/b;->d:Landroid/view/ViewGroup;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/g;->i:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/anythink/basead/ui/b/g$1;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/b/g$1;->d:Lcom/anythink/basead/ui/b/g;

    iget-object v1, v0, Lcom/anythink/basead/ui/b/b;->b:Lcom/anythink/core/common/f/l;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/b;->c:Lcom/anythink/core/common/f/m;

    invoke-static {v1, v0}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/f/l;Lcom/anythink/core/common/f/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/b/g$1;->d:Lcom/anythink/basead/ui/b/g;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/g;->i:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->hasBeenShow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/anythink/basead/ui/b/g$1;->d:Lcom/anythink/basead/ui/b/g;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/g;->i:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->pause()V

    iget-object v0, p0, Lcom/anythink/basead/ui/b/g$1;->d:Lcom/anythink/basead/ui/b/g;

    iget-object v1, v0, Lcom/anythink/basead/ui/b/g;->i:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    iget v2, p0, Lcom/anythink/basead/ui/b/g$1;->a:I

    iget-wide v3, p0, Lcom/anythink/basead/ui/b/g$1;->b:J

    iget-wide v5, p0, Lcom/anythink/basead/ui/b/g$1;->c:J

    invoke-virtual/range {v1 .. v6}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->reset(IJJ)V

    iget-object v0, p0, Lcom/anythink/basead/ui/b/g$1;->d:Lcom/anythink/basead/ui/b/g;

    iget-object v0, v0, Lcom/anythink/basead/ui/b/g;->i:Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/specialnote/BaseSpecialNoteView;->resume()V

    :cond_1
    return-void
.end method
