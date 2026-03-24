.class public final Lcom/anythink/core/common/f/ab;
.super Lcom/anythink/core/common/f/n;
.source ""


# instance fields
.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/anythink/core/common/f/n;-><init>()V

    return-void
.end method

.method private Y(I)V
    .locals 0

    iput p1, p0, Lcom/anythink/core/common/f/ab;->n:I

    return-void
.end method

.method public static i(Ljava/lang/String;)Lcom/anythink/core/common/f/ab;
    .locals 22

    const-string v0, "rsdl_rate"

    const-string v1, "ready_rate"

    const-string v2, "sh_cl_itp"

    const-string v3, "ft_cl_sz"

    const-string v4, "click_nt_sw"

    const-string v5, "click_cache_time"

    const-string v6, "shk_time"

    const-string v7, "shk_strength_and"

    const-string v8, "shk_sw"

    const-string v9, "ap_pasbl"

    const-string v10, "ap_arpt"

    const-string v11, "clua"

    const-string v12, "ipua"

    const-string v13, "sh_ec"

    const-string v14, "int_cl_ti"

    const-string v15, "int_cl_sw"

    move-object/from16 v16, v0

    const-string v0, "at_ct_ti"

    move-object/from16 v17, v1

    const-string v1, "at_cl_sw"

    move-object/from16 v18, v2

    new-instance v2, Lcom/anythink/core/common/f/ab;

    invoke-direct {v2}, Lcom/anythink/core/common/f/ab;-><init>()V

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_16

    move-object/from16 v19, v3

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    move-object/from16 v20, v4

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "f_t"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->s(I)V

    const-string v4, "v_c"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->t(I)V

    const-string v4, "s_b_t"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->u(I)V

    const-string v4, "e_c_a"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->w(I)V

    const-string v4, "v_m"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->x(I)V

    const-string v4, "s_c_t"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->y(I)V

    const-string v4, "m_t"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->n(I)V

    const-string v4, "o_c_t"

    move-object/from16 v21, v5

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/anythink/core/common/f/n;->c(J)V

    const-string v4, "ak_cfm"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->o(I)V

    const-string v4, "ctdown_time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/anythink/core/common/f/n;->b(J)V

    const-string v4, "sk_able"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->p(I)V

    const-string v4, "orient"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->q(I)V

    const-string v4, "size"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->e(Ljava/lang/String;)V

    const-string v4, "cl_btn"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->r(I)V

    const-string v4, "ec_r"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->z(I)V

    const-string v4, "ec_s_t"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->A(I)V

    const-string v4, "ec_l_t"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->B(I)V

    const-string v4, "inter_type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->f(Ljava/lang/String;)V

    const-string v4, "spl_type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/anythink/core/common/f/ab;->n:I

    const-string v4, "or_t"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/anythink/core/common/f/n;->a(J)V

    const-string v4, "rv_fail_reward"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->g(I)V

    const-string v4, "cl_sz"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->h(I)V

    const-string v4, "si_fit"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->k(I)V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/anythink/core/common/f/n;->C(I)V

    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->D(I)V

    :cond_1
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->E(I)V

    :cond_2
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->F(I)V

    :cond_3
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->G(I)V

    :cond_4
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->e(I)V

    :cond_5
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->f(I)V

    :cond_6
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->H(I)V

    :cond_7
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->I(I)V

    :cond_8
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->J(I)V

    :cond_9
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->K(I)V

    :cond_a
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/anythink/core/common/f/n;->d(J)V

    :cond_b
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->L(I)V

    goto :goto_0

    :cond_c
    const v0, 0x36ee80

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->L(I)V

    :goto_0
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_d

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->M(I)V

    goto :goto_1

    :cond_d
    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->M(I)V

    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->i(I)V

    goto :goto_2

    :cond_e
    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->i(I)V

    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x2

    if-eqz v1, :cond_f

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->j(I)V

    goto :goto_3

    :cond_f
    invoke-virtual {v2, v5}, Lcom/anythink/core/common/f/n;->j(I)V

    :goto_3
    const-string v0, "shm_t"

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->N(I)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->O(I)V

    goto :goto_4

    :cond_10
    const/16 v0, 0x64

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->O(I)V

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_11

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->P(I)V

    goto :goto_5

    :cond_11
    invoke-virtual {v2, v6}, Lcom/anythink/core/common/f/n;->P(I)V

    :goto_5
    const-string v0, "video_ctn_type"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "video_ctn_type"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->Q(I)V

    goto :goto_6

    :cond_12
    invoke-virtual {v2, v5}, Lcom/anythink/core/common/f/n;->Q(I)V

    :goto_6
    const-string v0, "at_cl_img"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_13

    const/4 v0, 0x1

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->c(Z)V

    const-string v0, "at_cl_video"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_14

    const/4 v0, 0x1

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v2, v0}, Lcom/anythink/core/common/f/n;->d(Z)V

    const-string v0, "at_cl_ec"

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_15

    goto :goto_9

    :cond_15
    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v2, v4}, Lcom/anythink/core/common/f/n;->e(Z)V

    const-string v0, "at_cl_pt"

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/anythink/core/common/f/n;->e(J)V

    const-string v0, "at_cl_pct"

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/anythink/core/common/f/n;->f(J)V

    const-string v0, "at_cl_ec_pt"

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/anythink/core/common/f/n;->g(J)V

    const-string v0, "at_cl_ec_pct"

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/anythink/core/common/f/n;->h(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_16
    :goto_a
    return-object v2
.end method


# virtual methods
.method public final at()I
    .locals 1

    iget v0, p0, Lcom/anythink/core/common/f/ab;->n:I

    return v0
.end method
