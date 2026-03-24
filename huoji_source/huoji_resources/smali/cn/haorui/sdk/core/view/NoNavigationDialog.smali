.class public Lcn/haorui/sdk/core/view/NoNavigationDialog;
.super Landroid/app/AlertDialog;
.source ""


# instance fields
.field private window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcn/haorui/sdk/core/view/NoNavigationDialog;->window:Landroid/view/Window;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private clearFocusNotAle(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private focusNotAle(Landroid/view/Window;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method


# virtual methods
.method public hideNavigationBar(Landroid/view/Window;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/haorui/sdk/core/view/NoNavigationDialog$a;

    invoke-direct {v1, p0, p1}, Lcn/haorui/sdk/core/view/NoNavigationDialog$a;-><init>(Lcn/haorui/sdk/core/view/NoNavigationDialog;Landroid/view/Window;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcn/haorui/sdk/core/view/NoNavigationDialog;->window:Landroid/view/Window;

    invoke-direct {p0, v0}, Lcn/haorui/sdk/core/view/NoNavigationDialog;->focusNotAle(Landroid/view/Window;)V

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/NoNavigationDialog;->window:Landroid/view/Window;

    invoke-virtual {p0, v0}, Lcn/haorui/sdk/core/view/NoNavigationDialog;->hideNavigationBar(Landroid/view/Window;)V

    iget-object v0, p0, Lcn/haorui/sdk/core/view/NoNavigationDialog;->window:Landroid/view/Window;

    invoke-direct {p0, v0}, Lcn/haorui/sdk/core/view/NoNavigationDialog;->clearFocusNotAle(Landroid/view/Window;)V

    return-void
.end method
