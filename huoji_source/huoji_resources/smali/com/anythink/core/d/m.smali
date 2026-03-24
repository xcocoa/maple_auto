.class public final Lcom/anythink/core/d/m;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IILorg/json/JSONObject;)Lcom/anythink/core/common/f/av;
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-instance v5, Lcom/anythink/core/common/f/av;

    move/from16 v6, p0

    invoke-direct {v5, v6}, Lcom/anythink/core/common/f/av;-><init>(I)V

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->e(I)V

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/av;->d(I)V

    const-string v6, "adapter_class"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-string v8, ""

    if-eqz v7, :cond_1

    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/av;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->c(Ljava/lang/String;)V

    :goto_1
    const-string v6, "caps_d"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, -0x1

    if-eqz v7, :cond_2

    invoke-virtual {v5, v9}, Lcom/anythink/core/common/f/av;->b(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->b(I)V

    :goto_2
    const-string v6, "caps_h"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5, v9}, Lcom/anythink/core/common/f/av;->c(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->c(I)V

    :goto_3
    const-string v6, "content"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/av;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->b(Ljava/lang/String;)V

    :goto_4
    const-string v6, "nw_firm_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5, v9}, Lcom/anythink/core/common/f/av;->a(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->a(I)V

    :goto_5
    const-string v6, "nw_firm_name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/av;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->a(Ljava/lang/String;)V

    :goto_6
    const-string v6, "ug_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v6, "unknown"

    goto :goto_7

    :cond_7
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_7
    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->d(Ljava/lang/String;)V

    const-string v6, "nw_cache_time"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-wide/16 v10, 0x0

    if-eqz v7, :cond_8

    invoke-virtual {v5, v10, v11}, Lcom/anythink/core/common/f/av;->c(J)V

    goto :goto_8

    :cond_8
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/av;->c(J)V

    :goto_8
    const-string v6, "nw_timeout"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5, v10, v11}, Lcom/anythink/core/common/f/av;->d(J)V

    goto :goto_9

    :cond_9
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/av;->d(J)V

    :goto_9
    const-string v6, "nw_req_num"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/av;->h(I)V

    goto :goto_a

    :cond_a
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->h(I)V

    :goto_a
    const-string v6, "pacing"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-wide/16 v12, -0x1

    if-eqz v7, :cond_b

    invoke-virtual {v5, v12, v13}, Lcom/anythink/core/common/f/av;->e(J)V

    goto :goto_b

    :cond_b
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/av;->e(J)V

    :goto_b
    const-string v6, "unit_id"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/av;->e(Ljava/lang/String;)V

    goto :goto_c

    :cond_c
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->e(Ljava/lang/String;)V

    :goto_c
    const-string v6, "ecpm"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-wide/16 v14, 0x0

    if-eqz v7, :cond_d

    invoke-virtual {v5, v14, v15}, Lcom/anythink/core/common/f/av;->a(D)V

    goto :goto_d

    :cond_d
    invoke-virtual {v1, v6, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/av;->a(D)V

    :goto_d
    const-string v6, "hb_timeout"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-wide/16 v6, 0x7d0

    goto :goto_e

    :cond_e
    const-string v6, "hb_timeout"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    :goto_e
    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/av;->f(J)V

    const-string v6, "t_c_u"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/av;->f(Ljava/lang/String;)V

    goto :goto_f

    :cond_f
    const-string v6, "t_c_u"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->f(Ljava/lang/String;)V

    :goto_f
    const-string v6, "t_c_u_min_t"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v5, v2}, Lcom/anythink/core/common/f/av;->i(I)V

    goto :goto_10

    :cond_10
    const-string v6, "t_c_u_min_t"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->i(I)V

    :goto_10
    const-string v6, "t_c_u_max_t"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/16 v6, 0xbb8

    goto :goto_11

    :cond_11
    const-string v6, "t_c_u_max_t"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    :goto_11
    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->j(I)V

    const-string v6, "payload"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/av;->g(Ljava/lang/String;)V

    goto :goto_12

    :cond_12
    const-string v6, "payload"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->g(Ljava/lang/String;)V

    :goto_12
    const-string v6, "error"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/av;->h(Ljava/lang/String;)V

    goto :goto_13

    :cond_13
    const-string v6, "error"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->h(Ljava/lang/String;)V

    :goto_13
    const-string v6, "l_s_t"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-wide/32 v6, 0x1b7740

    goto :goto_14

    :cond_14
    const-string v6, "l_s_t"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    :goto_14
    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/av;->g(J)V

    const-string v6, "n_d_t"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v5, v12, v13}, Lcom/anythink/core/common/f/av;->h(J)V

    goto :goto_15

    :cond_15
    const-string v6, "n_d_t"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/av;->h(J)V

    :goto_15
    const-string v6, "hb_t_c_t"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-wide/32 v6, 0x1b7740

    goto :goto_16

    :cond_16
    const-string v6, "hb_t_c_t"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    :goto_16
    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/av;->b(J)V

    const-string v6, "sort_type"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    xor-int/2addr v4, v3

    goto :goto_17

    :cond_17
    const-string v4, "sort_type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    :goto_17
    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/av;->g(I)V

    const-string v4, "s_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/av;->k(I)V

    goto :goto_18

    :cond_18
    const-string v4, "s_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/av;->k(I)V

    :goto_18
    const-string v4, "c_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/av;->l(I)V

    goto :goto_19

    :cond_19
    const-string v4, "c_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/av;->l(I)V

    :goto_19
    const-string v4, "ecpm_level"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual {v5, v9}, Lcom/anythink/core/common/f/av;->m(I)V

    goto :goto_1a

    :cond_1a
    const-string v4, "ecpm_level"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/av;->m(I)V

    :goto_1a
    const-string v4, "precision"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "publisher_defined"

    goto :goto_1b

    :cond_1b
    const-string v4, "precision"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1b
    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/av;->i(Ljava/lang/String;)V

    const-string v4, "nx_req_time"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v5, v10, v11}, Lcom/anythink/core/common/f/av;->i(J)V

    goto :goto_1c

    :cond_1c
    const-string v4, "nx_req_time"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/av;->i(J)V

    :goto_1c
    const-string v4, "bid_fail_interval"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {v5, v10, v11}, Lcom/anythink/core/common/f/av;->j(J)V

    goto :goto_1d

    :cond_1d
    const-string v4, "bid_fail_interval"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/av;->j(J)V

    :goto_1d
    const-string v4, "cy_ecpm"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {v5, v14, v15}, Lcom/anythink/core/common/f/av;->b(D)V

    goto :goto_1e

    :cond_1e
    const-string v4, "cy_ecpm"

    invoke-virtual {v1, v4, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/anythink/core/common/f/av;->b(D)V

    :goto_1e
    const-string v4, "irrf_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/av;->n(I)V

    goto :goto_1f

    :cond_1f
    const-string v4, "irrf_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/av;->n(I)V

    :goto_1f
    const-string v4, "wfe_t_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/av;->o(I)V

    goto :goto_20

    :cond_20
    const-string v4, "wfe_t_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/av;->o(I)V

    :goto_20
    const-string v4, "ubp_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_21

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->p(I)V

    goto :goto_21

    :cond_21
    const-string v4, "ubp_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/av;->p(I)V

    :goto_21
    const-string v4, "bid_pl_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/av;->f(I)V

    goto :goto_22

    :cond_22
    const-string v4, "bid_pl_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/av;->f(I)V

    :goto_22
    const-string v4, "s2s_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->q(I)V

    goto :goto_23

    :cond_23
    const-string v4, "s2s_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/av;->q(I)V

    :goto_23
    const-string v4, "i_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->s(I)V

    goto :goto_24

    :cond_24
    const-string v4, "i_sw"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/av;->s(I)V

    :goto_24
    const-string v4, "sp_ps"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v5, v2}, Lcom/anythink/core/common/f/av;->r(I)V

    goto :goto_25

    :cond_25
    const-string v4, "sp_ps"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/av;->r(I)V

    :goto_25
    const-string v4, "rtcb_hbecpm"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/av;->t(I)V

    goto :goto_26

    :cond_26
    const-string v4, "rtcb_hbecpm"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/av;->t(I)V

    :goto_26
    const-string v4, "oid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v5, v8}, Lcom/anythink/core/common/f/av;->j(Ljava/lang/String;)V

    goto :goto_27

    :cond_27
    const-string v4, "oid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/anythink/core/common/f/av;->j(Ljava/lang/String;)V

    :goto_27
    const/4 v4, 0x7

    if-ne v0, v4, :cond_28

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/d/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/d/c;

    move-result-object v0

    invoke-virtual {v5}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/anythink/core/common/f/av;->V()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lcom/anythink/core/common/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    const-string v0, "show_req"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->u(I)V

    goto :goto_28

    :cond_29
    const-string v0, "show_req"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->u(I)V

    :goto_28
    const-string v0, "ad_type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v5, v9}, Lcom/anythink/core/common/f/av;->v(I)V

    goto :goto_29

    :cond_2a
    const-string v0, "ad_type"

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->v(I)V

    :goto_29
    const-string v0, "hb_preq_sw"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v5, v9}, Lcom/anythink/core/common/f/av;->w(I)V

    goto :goto_2a

    :cond_2b
    const-string v0, "hb_preq_sw"

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->w(I)V

    :goto_2a
    invoke-virtual {v5}, Lcom/anythink/core/common/f/av;->m()I

    move-result v0

    if-ne v0, v6, :cond_2c

    invoke-virtual {v5}, Lcom/anythink/core/common/f/av;->d()I

    move-result v0

    const/16 v4, 0x16

    if-ne v0, v4, :cond_2c

    sget-object v0, Lcom/anythink/core/api/ATAdConst$CURRENCY;->RMB_CENT:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    goto :goto_2b

    :cond_2c
    sget-object v0, Lcom/anythink/core/api/ATAdConst$CURRENCY;->USD:Lcom/anythink/core/api/ATAdConst$CURRENCY;

    :goto_2b
    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->a(Lcom/anythink/core/api/ATAdConst$CURRENCY;)V

    const-string v0, "show_delay"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {v5, v2}, Lcom/anythink/core/common/f/av;->y(I)V

    goto :goto_2c

    :cond_2d
    const-string v0, "show_delay"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->y(I)V

    :goto_2c
    const-string v0, "bid_floor"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v5, v14, v15}, Lcom/anythink/core/common/f/av;->c(D)V

    goto :goto_2d

    :cond_2e
    const-string v0, "bid_floor"

    invoke-virtual {v1, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/anythink/core/common/f/av;->c(D)V

    :goto_2d
    const-string v0, "ntf_sl_sw"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {v5, v9}, Lcom/anythink/core/common/f/av;->z(I)V

    goto :goto_2e

    :cond_2f
    const-string v0, "ntf_sl_sw"

    invoke-virtual {v1, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->z(I)V

    :goto_2e
    const-string v0, "s_pty"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v5}, Lcom/anythink/core/common/f/av;->y()D

    move-result-wide v7

    if-eqz v0, :cond_30

    goto :goto_2f

    :cond_30
    const-string v0, "s_pty"

    invoke-virtual {v1, v0, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    :goto_2f
    invoke-virtual {v5, v7, v8}, Lcom/anythink/core/common/f/av;->d(D)V

    const-string v0, "nw_cur"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "CNY"

    goto :goto_30

    :cond_31
    const-string v0, "nw_cur"

    const-string v4, "CNY"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_30
    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->k(Ljava/lang/String;)V

    const-string v0, "wn_st_md_sw"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->A(I)V

    goto :goto_31

    :cond_32
    const-string v0, "wn_st_md_sw"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->A(I)V

    :goto_31
    const-string v0, "ads_max_cache_num"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/av;->D(I)V

    goto :goto_32

    :cond_33
    const-string v0, "ads_max_cache_num"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->D(I)V

    :goto_32
    const-string v0, "ilrd_est_sw"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {v5, v6}, Lcom/anythink/core/common/f/av;->E(I)V

    goto :goto_33

    :cond_34
    const-string v0, "ilrd_est_sw"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->E(I)V

    :goto_33
    const-string v0, "g_ra_label"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    const-string v0, "TopOn"

    goto :goto_34

    :cond_35
    const-string v0, "g_ra_label"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_34
    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->l(Ljava/lang/String;)V

    const-wide/16 v7, 0x3a98

    const-string v0, "ad_auto_refresh_time"

    invoke-virtual {v1, v0, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/anythink/core/common/f/av;->l(J)V

    const/4 v0, 0x0

    const-string v4, "mix_click_type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    const-string v4, "mix_click_type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_36

    :try_start_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v0, v7, [I

    :goto_35
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_36

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    aput v7, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :catch_0
    nop

    :cond_36
    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->a([I)V

    const-string v0, "c_w_pr_rt"

    invoke-virtual {v1, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Lcom/anythink/core/common/f/av;->f(D)V

    const-string v0, "c_l_pr_rt"

    invoke-virtual {v1, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    div-double/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Lcom/anythink/core/common/f/av;->g(D)V

    const-string v0, "s_w_pr_rt"

    invoke-virtual {v1, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    div-double/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Lcom/anythink/core/common/f/av;->h(D)V

    const-string v0, "s_l_pr_rt"

    invoke-virtual {v1, v0, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    div-double/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Lcom/anythink/core/common/f/av;->i(D)V

    const-string v0, "w_nt_sw"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->F(I)V

    const-string v0, "l_nt_sw"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->G(I)V

    const-string v0, "c_m_urls"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    const-string v0, "c_m_urls"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->a(Lorg/json/JSONArray;)V

    :cond_37
    const-string v0, "sys_sp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "sys_sp"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->H(I)V

    :cond_38
    const-string v0, "ad_s_reqf_mode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "ad_s_reqf_mode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->I(I)V

    :cond_39
    invoke-virtual {v5}, Lcom/anythink/core/common/f/av;->d()I

    move-result v0

    const v1, 0x186a0

    if-lt v0, v1, :cond_3b

    invoke-static {}, Lcom/anythink/core/common/b/n;->a()Lcom/anythink/core/common/b/n;

    move-result-object v0

    invoke-virtual {v5}, Lcom/anythink/core/common/f/av;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/n;->b(Ljava/lang/String;)Lcom/anythink/core/api/ATCustomAdapterConfig;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/anythink/core/api/ATCustomAdapterConfig;->isRealTimeBidSwitch()Z

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v3, 0x2

    :cond_3a
    invoke-virtual {v5, v3}, Lcom/anythink/core/common/f/av;->f(I)V

    invoke-virtual {v0}, Lcom/anythink/core/api/ATCustomAdapterConfig;->getAdCacheTime()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Lcom/anythink/core/common/f/av;->c(J)V

    invoke-virtual {v0}, Lcom/anythink/core/api/ATCustomAdapterConfig;->getLossNoticePostion()I

    move-result v1

    if-lez v1, :cond_3b

    invoke-virtual {v0}, Lcom/anythink/core/api/ATCustomAdapterConfig;->getLossNoticePostion()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/anythink/core/common/f/av;->z(I)V

    :cond_3b
    return-object v5
.end method

.method public static a(Lcom/anythink/core/d/f;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/f;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->ar()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->P()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {p0, v1, v2, v3}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->as()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {p0, v3, v4, v4}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->N()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x7

    invoke-static {p0, v4, v5, v6}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->F()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    const/16 v9, 0xb

    invoke-static {p0, v7, v8, v9}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->aA()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    invoke-static {p0, v8, v6, v9}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->aB()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v2, v5}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static a(Lcom/anythink/core/d/f;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/f;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/anythink/core/d/f;Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/f;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p3, p2, v2}, Lcom/anythink/core/d/m;->a(IILorg/json/JSONObject;)Lcom/anythink/core/common/f/av;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/av;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method private static a(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/av;)V
    .locals 5

    invoke-virtual {p1}, Lcom/anythink/core/common/f/av;->ae()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->aE()D

    move-result-wide v0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    invoke-virtual {p1, v0, v1}, Lcom/anythink/core/common/f/av;->c(D)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/anythink/core/d/f;Ljava/util/Map;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/av;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->ap()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->aq()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v6 .. v11}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->ar()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->P()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x4

    invoke-static/range {v6 .. v11}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->as()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->N()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    const/4 v11, 0x7

    invoke-static/range {v6 .. v11}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->F()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    const/16 v5, 0xb

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->aA()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    const/16 v11, 0x8

    invoke-static/range {v6 .. v11}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->aB()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x5

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->A()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8

    const/16 v11, 0xa

    invoke-static/range {v6 .. v11}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->t()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/16 v5, 0x9

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V

    return-void
.end method

.method private static a(Lcom/anythink/core/d/f;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/f;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/f/av;",
            ">;",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p3, v1, :cond_2

    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p5, p4, v1}, Lcom/anythink/core/d/m;->a(IILorg/json/JSONObject;)Lcom/anythink/core/common/f/av;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/f/av;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/av;->d()I

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p0, v1}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Lcom/anythink/core/common/f/av;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public static b(Lcom/anythink/core/d/f;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/f;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->ap()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->aq()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x6

    invoke-static {p0, v1, v2, v3}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static c(Lcom/anythink/core/d/f;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/f;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->A()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/16 v2, 0xa

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/anythink/core/d/f;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/anythink/core/d/f;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/f/av;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/anythink/core/d/f;->t()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x9

    invoke-static {p0, v0, v1, v2}, Lcom/anythink/core/d/m;->a(Lcom/anythink/core/d/f;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/f/av;

    invoke-virtual {v1}, Lcom/anythink/core/common/f/av;->aj()V

    goto :goto_0

    :cond_0
    return-object p0
.end method
