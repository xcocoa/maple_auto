.class public Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final Oooooo:Ljava/lang/String;

.field public static final UIP_MESSAGE:I


# instance fields
.field private OoooOoO:Landroid/content/Context;

.field private OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

.field private Ooooo00:Lcom/cyjh/mobileanjian/ipc/uip/a;

.field private Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

.field private OooooO0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ScrollView;",
            ">;"
        }
    .end annotation
.end field

.field private OooooOO:Z

.field private OooooOo:Landroid/os/Handler;

.field private Oooooo0:Lorg/json/JSONObject;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".uip.config.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Oooooo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$OooO0O0;

    invoke-direct {v0, p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$OooO0O0;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooOo:Landroid/os/Handler;

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    return-void
.end method

.method private OooO(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;
    .locals 7

    if-nez p2, :cond_0

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;-><init>(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Lcom/cyjh/mobileanjian/ipc/uip/c;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v3, Lcom/cyjh/mqsdk/R$string;->ui_activity:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x20

    if-ge v1, v2, :cond_8

    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    new-instance v4, Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/cyjh/mobileanjian/ipc/uip/c;->OoooooO:[I

    iget v6, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->OooooOo:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setId(I)V

    iget v5, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->Ooooo0o:I

    invoke-virtual {v4, p1, p1, p1, v5}, Landroid/widget/RadioButton;->setPadding(IIII)V

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/cyjh/mqsdk/R$color;->selector_tab:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setLines(I)V

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v6, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->OoooOoO:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->OooooOO:Landroid/widget/ScrollView;

    const/high16 v6, 0x20000

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    iget-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->OooooOO:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->OooooOO:Landroid/widget/ScrollView;

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setFocusableInTouchMode(Z)V

    iget-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->OooooOO:Landroid/widget/ScrollView;

    new-instance v6, Lcom/cyjh/mobileanjian/ipc/uip/c$OooO00o;

    invoke-direct {v6, v3}, Lcom/cyjh/mobileanjian/ipc/uip/c$OooO00o;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/c;)V

    invoke-virtual {v4, v6}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->OooooOO:Landroid/widget/ScrollView;

    invoke-virtual {v4, v2}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    iget-object v2, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->OooooOO:Landroid/widget/ScrollView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->OooooO0:Landroid/widget/LinearLayout;

    iget-object v3, v3, Lcom/cyjh/mobileanjian/ipc/uip/c;->OooooOO:Landroid/widget/ScrollView;

    invoke-virtual {v3, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_linearlayout:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseHorizontalLinearLayout(Landroid/util/JsonReader;)Lcom/cyjh/mobileanjian/ipc/uip/b;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    :goto_3
    invoke-virtual {v3, v2}, Lcom/cyjh/mobileanjian/ipc/uip/c;->OooO0O0(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_textview:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    goto :goto_3

    :cond_2
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_button:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseButton(Landroid/util/JsonReader;)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_edittext:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_checkbox:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    iget-object v3, v2, Lcom/cyjh/mobileanjian/ipc/uip/c;->Ooooo00:Ljava/util/List;

    iget-object v4, v2, Lcom/cyjh/mobileanjian/ipc/uip/c;->OooooOO:Landroid/widget/ScrollView;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, v2, Lcom/cyjh/mobileanjian/ipc/uip/c;->OooooOo:I

    add-int/2addr v3, v5

    iput v3, v2, Lcom/cyjh/mobileanjian/ipc/uip/c;->OooooOo:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/uip/c;->setSelectTab(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getScrollViewList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->bindEvent(Ljava/util/List;)V

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Oooooo:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveToConfigFile(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    return-object p1
.end method

.method private OooO00o(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;
    .locals 13

    if-nez p2, :cond_0

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;-><init>(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v4, Landroidx/viewpager/widget/ViewPager;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v5, Landroid/widget/TableLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/cyjh/mobileanjian/ipc/uip/a;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/cyjh/mobileanjian/ipc/uip/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo00:Lcom/cyjh/mobileanjian/ipc/uip/a;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo00:Lcom/cyjh/mobileanjian/ipc/uip/a;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v6, v7}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO00o(F)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo00:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo00:Lcom/cyjh/mobileanjian/ipc/uip/a;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v2, v5}, Lcom/cyjh/mobileanjian/ipc/uip/a;->OooO00o(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo00:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0x20

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Landroid/util/JsonReader;

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object v8, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v9, Lcom/cyjh/mqsdk/R$string;->ui_activity:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/ScrollView;

    iget-object v10, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, p1}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    :goto_2
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_linearlayout:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseHorizontalLinearLayout(Landroid/util/JsonReader;)Lcom/cyjh/mobileanjian/ipc/uip/b;

    move-result-object v10

    :goto_3
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_textview:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v10

    goto :goto_3

    :cond_3
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_button:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseButton(Landroid/util/JsonReader;)Landroid/widget/Button;

    move-result-object v10

    goto :goto_3

    :cond_4
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_edittext:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v10

    goto :goto_3

    :cond_5
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_checkbox:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v10

    goto :goto_3

    :cond_6
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_spinner:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v10

    goto :goto_3

    :cond_7
    invoke-virtual {v7}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v5, :cond_1

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    new-instance p1, Lz2/df;

    invoke-direct {p1, v2, v6}, Lz2/df;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo00:Lcom/cyjh/mobileanjian/ipc/uip/a;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/uip/a;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->bindEvent(Ljava/util/List;)V

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Oooooo:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveToConfigFile(Ljava/lang/String;)V

    return-object v0
.end method

.method private OooO0O0(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/cyjh/mobileanjian/ipc/uip/b;

    if-nez v3, :cond_3

    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    sget v3, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    instance-of v3, v2, Landroid/widget/Spinner;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_2

    :cond_1
    instance-of v3, v2, Landroid/widget/CheckBox;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    instance-of v3, v2, Landroid/widget/Button;

    if-eqz v3, :cond_4

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    :goto_1
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooO0O0(Landroid/view/ViewGroup;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static synthetic OooO0OO(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooO0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Landroid/widget/Spinner;

    if-eqz v4, :cond_2

    check-cast v2, Landroid/widget/Spinner;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_spinner_defaultitem:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lz2/cf;

    iget-object p1, p1, Lz2/cf;->OoooOoO:Ljava/util/List;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_spinner_items:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_2

    :cond_2
    instance-of v4, v2, Landroid/widget/CheckBox;

    if-eqz v4, :cond_3

    check-cast v2, Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_hintcontent:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_checked:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    instance-of v4, v2, Landroid/widget/Button;

    if-eqz v4, :cond_4

    check-cast v2, Landroid/widget/Button;

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    instance-of v4, v2, Landroid/widget/EditText;

    if-eqz v4, :cond_6

    check-cast v2, Landroid/widget/EditText;

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_edittext_defaultcontent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    const-string p1, "\u5bc6\u7801"

    if-eqz p0, :cond_5

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_2

    :cond_6
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    check-cast v2, Landroid/widget/TextView;

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget p1, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    :cond_7
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "rtnJson:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setUipAttributeData(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->UiRequestReturn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic OooO0Oo(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooO0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/Spinner;

    if-eqz v2, :cond_6

    check-cast v1, Landroid/widget/Spinner;

    const/4 p1, -0x1

    const/4 p2, 0x0

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner_defaultitem:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner_items:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    :goto_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    if-eqz p2, :cond_5

    new-instance v0, Lz2/cf;

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v0, p0, p2}, Lz2/cf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const p0, 0x1090009

    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_5
    if-ltz p1, :cond_12

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result p0

    if-ge p1, p0, :cond_12

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_8

    :cond_6
    instance-of v2, v1, Landroid/widget/CheckBox;

    if-eqz v2, :cond_a

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_hintcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_checked:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_8

    :cond_a
    instance-of v2, v1, Landroid/widget/Button;

    if-eqz v2, :cond_c

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3

    :cond_c
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_10

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_edittext_defaultcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_d
    const-string p2, "\u5bc6\u7801"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    nop

    :goto_5
    if-eqz p1, :cond_e

    :try_start_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p1

    :goto_6
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_4

    :cond_e
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object p1

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    :cond_10
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_7
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_11
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_12
    :goto_8
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->UiRequestReturn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private OooO0o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooO0:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/Spinner;

    if-eqz v2, :cond_6

    check-cast v1, Landroid/widget/Spinner;

    const/4 p1, -0x1

    const/4 p2, 0x0

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner_defaultitem:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextInt()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v4, Lcom/cyjh/mqsdk/R$string;->ui_spinner_items:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V

    :goto_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    if-eqz p2, :cond_5

    new-instance v0, Lz2/cf;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v0, v2, p2}, Lz2/cf;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const p2, 0x1090009

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_5
    if-ltz p1, :cond_12

    invoke-virtual {v1}, Landroid/widget/Spinner;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_12

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_8

    :cond_6
    instance-of v2, v1, Landroid/widget/CheckBox;

    if-eqz v2, :cond_a

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_2
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_hintcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_checked:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_8

    :cond_a
    instance-of v2, v1, Landroid/widget/Button;

    if-eqz v2, :cond_c

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_3
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_3

    :cond_c
    instance-of v2, v1, Landroid/widget/EditText;

    if-eqz v2, :cond_10

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_4
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_edittext_defaultcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_d
    const-string p2, "\u5bc6\u7801"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_f

    const/4 p1, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    nop

    :goto_5
    if-eqz p1, :cond_e

    :try_start_2
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p1

    :goto_6
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_4

    :cond_e
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object p1

    goto :goto_6

    :cond_f
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_4

    :cond_10
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    :goto_7
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_11
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_12
    :goto_8
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    sget-object p2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->UiRequestReturn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private OooO0o0(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooO0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Landroid/widget/Spinner;

    if-eqz v4, :cond_2

    check-cast v2, Landroid/widget/Spinner;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_spinner_defaultitem:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lz2/cf;

    iget-object p1, p1, Lz2/cf;->OoooOoO:Ljava/util/List;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v2, Lcom/cyjh/mqsdk/R$string;->ui_spinner_items:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    instance-of v4, v2, Landroid/widget/CheckBox;

    if-eqz v4, :cond_3

    check-cast v2, Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_hintcontent:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_checkbox_checked:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3

    :cond_3
    instance-of v4, v2, Landroid/widget/Button;

    if-eqz v4, :cond_4

    check-cast v2, Landroid/widget/Button;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_4
    instance-of v4, v2, Landroid/widget/EditText;

    if-eqz v4, :cond_6

    check-cast v2, Landroid/widget/EditText;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_edittext_defaultcontent:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p1

    instance-of p1, p1, Landroid/text/method/PasswordTransformationMethod;

    const-string v1, "\u5bc6\u7801"

    if-eqz p1, :cond_5

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3

    :cond_6
    instance-of v4, v2, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    check-cast v2, Landroid/widget/TextView;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v1, Lcom/cyjh/mqsdk/R$string;->ui_textview_textcontent:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_7
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "rtnJson:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->RSP_MSG:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setUipAttributeData(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->UiRequestReturn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private OooO0oO(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;
    .locals 13

    if-nez p2, :cond_0

    new-instance p2, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/cyjh/mobileanjian/ipc/uip/DefaultUipJsonParser;-><init>(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    new-array v5, v3, [I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/cyjh/mqsdk/R$color;->ui_show_blue:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v4, v3}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setDistributeEvenly(Z)V

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroidx/viewpager/widget/ViewPager;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v5, Landroid/widget/TableLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0x20

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Landroid/util/JsonReader;

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    iget-object v8, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v9, Lcom/cyjh/mqsdk/R$string;->ui_activity:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    :cond_1
    :goto_1
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p1

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/ScrollView;

    iget-object v10, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, p1}, Landroid/widget/ScrollView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v9, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/high16 v10, 0x20000

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setDescendantFocusability(I)V

    invoke-virtual {v9, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    invoke-virtual {v9, v3}, Landroid/widget/ScrollView;->setFocusableInTouchMode(Z)V

    new-instance v10, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$OooO00o;

    invoke-direct {v10, p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper$OooO00o;-><init>(Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;)V

    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v7}, Landroid/util/JsonReader;->beginObject()V

    :goto_2
    invoke-virtual {v7}, Landroid/util/JsonReader;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v7}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_linearlayout:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseHorizontalLinearLayout(Landroid/util/JsonReader;)Lcom/cyjh/mobileanjian/ipc/uip/b;

    move-result-object v10

    :goto_3
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_textview:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseTextView(Landroid/util/JsonReader;)Landroid/widget/TextView;

    move-result-object v10

    goto :goto_3

    :cond_3
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_button:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseButton(Landroid/util/JsonReader;)Landroid/widget/Button;

    move-result-object v10

    goto :goto_3

    :cond_4
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_edittext:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseEditText(Landroid/util/JsonReader;)Landroid/widget/EditText;

    move-result-object v10

    goto :goto_3

    :cond_5
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_checkbox:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseCheckBox(Landroid/util/JsonReader;)Landroid/widget/CheckBox;

    move-result-object v10

    goto :goto_3

    :cond_6
    iget-object v11, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    sget v12, Lcom/cyjh/mqsdk/R$string;->ui_spinner:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {p2, v7}, Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;->parseSpinner(Landroid/util/JsonReader;)Landroid/widget/Spinner;

    move-result-object v10

    goto :goto_3

    :cond_7
    invoke-virtual {v7}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v5, :cond_1

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v7}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    new-instance p1, Lz2/df;

    invoke-direct {p1, v2, v6}, Lz2/df;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {p1, v4}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {p0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->bindEvent(Ljava/util/List;)V

    sget-object p1, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Oooooo:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveToConfigFile(Ljava/lang/String;)V

    return-object v0
.end method

.method private OooO0oo(Landroid/view/ViewGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    instance-of v4, v2, Landroid/widget/LinearLayout;

    if-nez v4, :cond_3

    instance-of v4, v2, Lcom/cyjh/mobileanjian/ipc/uip/b;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    instance-of v4, v2, Landroid/widget/CheckBox;

    if-eqz v4, :cond_1

    check-cast v2, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Oooooo0:Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_2

    :cond_1
    instance-of v4, v2, Landroid/widget/Spinner;

    if-eqz v4, :cond_2

    check-cast v2, Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Oooooo0:Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    instance-of v4, v2, Landroid/widget/EditText;

    if-eqz v4, :cond_4

    check-cast v2, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Oooooo0:Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    :goto_1
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooO0oo(Landroid/view/ViewGroup;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public bindEvent(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/ScrollView;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooOo:Landroid/os/Handler;

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->registerHandler(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooO0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    invoke-direct {p0, v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooO0O0(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public configViewFromFile(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->configViewFromJson(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public configViewFromJson(Ljava/lang/String;)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooOO:Z

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooO0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    instance-of v5, v4, Landroid/widget/CheckBox;

    if-eqz v5, :cond_3

    check-cast v4, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_3
    instance-of v5, v4, Landroid/widget/Spinner;

    if-eqz v5, :cond_5

    check-cast v4, Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v5

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ge v6, v5, :cond_4

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    :cond_5
    instance-of v5, v4, Landroid/widget/EditText;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6
    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooOO:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooOO:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-virtual {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    sget v1, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setEventFunctionName(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v2

    sget-object v3, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->hasEvent(Lcom/google/protobuf/ByteString;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onClick Function Name: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "isCodeEvent: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooOO:Z

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooOO:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setControlId(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p2

    sget-object p4, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-virtual {p2, p4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setType(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setEventArgs(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p2

    sget p3, Lcom/cyjh/mqsdk/R$id;->uip_function_key:I

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->setEventFunctionName(Ljava/lang/String;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p2

    sget-object p3, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {p2, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setCommand(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setIsSuccess(Z)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->setEvent(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->build()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/protobuf/AbstractMessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-static {p2}, Lcom/cyjh/mobileanjian/ipc/uip/UipEventStub;->hasEvent(Lcom/google/protobuf/ByteString;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onItemSelected: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public parseLayoutFromJson(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;
    .locals 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooO(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooO0oO(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/uip/IUipJsonParser;)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method public restoreConfig()V
    .locals 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Oooooo:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->configViewFromFile(Ljava/lang/String;)V

    return-void
.end method

.method public saveConfigToJson()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Oooooo0:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooO0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    :try_start_0
    invoke-direct {p0, v1}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooO0oo(Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Oooooo0:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveToConfigFile(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->saveConfigToJson()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public transform(I)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooO0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "childCount of scrollview: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/cyjh/mobileanjian/ipc/uip/c;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooO0:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->OooO0Oo(Ljava/util/List;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->getViewPager()Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cyjh/mobileanjian/ipc/uip/c;->setSelectTab(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    return-object p1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooO0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    new-array v5, v1, [I

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/cyjh/mqsdk/R$color;->ui_show_blue:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v5, v2

    invoke-virtual {v4, v5}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setSelectedIndicatorColors([I)V

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v2, v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setDistributeEvenly(Z)V

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoO:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/TableLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lz2/df;

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OooooO0:Ljava/util/List;

    invoke-direct {v2, v3, p1}, Lz2/df;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->Ooooo0o:Lcom/cyjh/mobileanjian/ipc/uip/c;

    invoke-virtual {p1}, Lcom/cyjh/mobileanjian/ipc/uip/c;->getCurrentItem()I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/uip/UipHelper;->OoooOoo:Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;

    invoke-virtual {p1, v1}, Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-object v0
.end method
