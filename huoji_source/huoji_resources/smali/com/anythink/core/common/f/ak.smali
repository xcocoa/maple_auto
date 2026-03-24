.class public final Lcom/anythink/core/common/f/ak;
.super Lcom/anythink/core/common/f/n;
.source ""


# instance fields
.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/core/common/f/n;-><init>()V

    return-void
.end method

.method private Y(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/ak;->o:I

    return-void
.end method

.method private Z(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/ak;->n:I

    return-void
.end method

.method private aa(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/ak;->p:I

    return-void
.end method

.method public static i(Ljava/lang/String;)Lcom/anythink/core/common/f/ak;
    .locals 21

    const-string v0, "sh_cl_itp"

    const-string v1, "ft_cl_sz"

    const-string v2, "click_nt_sw"

    const-string v3, "click_cache_time"

    const-string v4, "shk_time"

    const-string v5, "shk_strength_and"

    const-string v6, "shk_sw"

    const-string v7, "inter_type"

    const-string v8, "ap_pasbl"

    const-string v9, "ap_arpt"

    const-string v10, "sh_ec"

    const-string v11, "int_cl_ti"

    const-string v12, "int_cl_sw"

    const-string v13, "at_ct_ti"

    const-string v14, "at_cl_sw"

    const-string v15, "s_b_d"

    move-object/from16 v16, v0

    const-string v0, ""

    move-object/from16 v17, v1

    new-instance v1, Lcom/anythink/core/common/f/ak;

    invoke-direct {v1}, Lcom/anythink/core/common/f/ak;-><init>()V

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    return-object v1

    :cond_0
    move-object/from16 v18, v0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v19, v2

    move-object/from16 v2, p0

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "f_t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->s(I)V

    const-string v2, "v_c"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v20, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->t(I)V

    const-string v2, "s_b_t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->u(I)V

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->v(I)V

    :cond_3
    const-string v2, "e_c_a"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->w(I)V

    const-string v2, "ak_cfm"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->o(I)V

    const-string v2, "m_t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->n(I)V

    const-string v2, "cm"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    goto :goto_3

    :cond_9
    const/4 v2, 0x1

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    :goto_3
    iput v2, v1, Lcom/anythink/core/common/f/ak;->n:I

    const-string v2, "ipua"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->e(I)V

    const-string v2, "clua"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->f(I)V

    const-string v2, "dp_cm"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->m(I)V

    const-string v2, "l_o_num"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/anythink/core/common/f/ak;->o:I

    const-string v2, "ld_t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->l(I)V

    const-string v2, "ec_r"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->z(I)V

    const-string v2, "ec_s_t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->A(I)V

    const-string v2, "ec_l_t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->B(I)V

    const-string v2, "or_t"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/n;->a(J)V

    const-string v2, "rv_fail_reward"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->g(I)V

    const-string v2, "cl_sz"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->h(I)V

    const-string v2, "si_fit"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->k(I)V

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->C(I)V

    :cond_b
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->D(I)V

    :cond_c
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->E(I)V

    :cond_d
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->F(I)V

    :cond_e
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->G(I)V

    :cond_f
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->H(I)V

    :cond_10
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->I(I)V

    :cond_11
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->f(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->J(I)V

    :cond_13
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->K(I)V

    :cond_14
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/n;->d(J)V

    :cond_15
    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->L(I)V

    :cond_16
    move-object/from16 v2, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->M(I)V

    :cond_17
    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->i(I)V

    goto :goto_4

    :cond_18
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->i(I)V

    :goto_4
    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->j(I)V

    goto :goto_5

    :cond_19
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->j(I)V

    :goto_5
    const-string v2, "shm_t"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->N(I)V

    const-string v2, "ready_rate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "ready_rate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->O(I)V

    goto :goto_6

    :cond_1a
    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->O(I)V

    :goto_6
    const-string v2, "rsdl_rate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "rsdl_rate"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->P(I)V

    goto :goto_7

    :cond_1b
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->P(I)V

    :goto_7
    const-string v2, "video_ctn_type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-string v2, "video_ctn_type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->Q(I)V

    goto :goto_8

    :cond_1c
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->Q(I)V

    :goto_8
    const-string v2, "preload_offer_html"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "preload_offer_html"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1d

    const/4 v2, 0x1

    goto :goto_9

    :cond_1d
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->a(Z)V

    goto :goto_a

    :cond_1e
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->a(Z)V

    :goto_a
    const-string v2, "re_monitor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "re_monitor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1f

    const/4 v2, 0x1

    goto :goto_b

    :cond_1f
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->b(Z)V

    const/4 v2, 0x0

    goto :goto_c

    :cond_20
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->b(Z)V

    :goto_c
    const-string v4, "wn_st_md_sw"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Lcom/anythink/core/common/f/ak;->p:I

    const-string v2, "at_cl_img"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_21

    const/4 v2, 0x1

    goto :goto_d

    :cond_21
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->c(Z)V

    const-string v2, "at_cl_video"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_22

    const/4 v2, 0x1

    goto :goto_e

    :cond_22
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->d(Z)V

    const-string v2, "at_cl_ec"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_23

    const/4 v2, 0x1

    goto :goto_f

    :cond_23
    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->e(Z)V

    const-string v2, "at_cl_pt"

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/anythink/core/common/f/n;->e(J)V

    const-string v2, "at_cl_pct"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/anythink/core/common/f/n;->f(J)V

    const-string v2, "at_cl_ec_pt"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/anythink/core/common/f/n;->g(J)V

    const-string v2, "at_cl_ec_pct"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/anythink/core/common/f/n;->h(J)V

    const-string v2, "or_img_t"

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/anythink/core/common/f/n;->i(J)V

    const-string v2, "animate_type"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->S(I)V

    const-string v2, "render_wv_ld"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->R(I)V

    const-string v2, "cl_invalid_sw"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->T(I)V

    const-string v2, "stc_sw"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->U(I)V

    const-string v2, "close_button_m"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->V(I)V

    const-string v2, "cgf_sw"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->W(I)V

    const-string v2, "cgf_t"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/f/n;->j(J)V

    const-string v2, "cgf_list"

    move-object/from16 v3, v18

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->g(Ljava/lang/String;)V

    const-string v2, "qa_po"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->h(Ljava/lang/String;)V

    const-string v2, "lp_pop"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->b(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "shk_obj"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_24

    const-string v4, "shk_type"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/anythink/core/common/f/n;->a(I)V

    const-string v4, "shk_icon"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/anythink/core/common/f/n;->a(Ljava/lang/String;)V

    const-string v4, "shk_text_l"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/anythink/core/common/f/n;->b(Ljava/lang/String;)V

    const-string v4, "shk_text_m"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/anythink/core/common/f/n;->c(Ljava/lang/String;)V

    const-string v4, "shk_text_s"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_24
    :try_start_2
    const-string v2, "s_c_t"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/anythink/core/common/f/n;->y(I)V

    const-string v2, "v_cls"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/anythink/core/common/f/n;->X(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_10

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_10
    return-object v1
.end method


# virtual methods
.method public final at()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/ak;->o:I

    return v0
.end method

.method public final au()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/ak;->n:I

    return v0
.end method

.method public final av()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/ak;->p:I

    return v0
.end method
