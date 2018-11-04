.class Lmiui/maml/data/WebServiceBinder$List;
.super Ljava/lang/Object;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "List"
.end annotation


# static fields
.field private static final synthetic -miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I


# instance fields
.field public mDataPath:Ljava/lang/String;

.field private mList:Lmiui/maml/elements/ListScreenElement;

.field private mName:Ljava/lang/String;

.field private mRoot:Lmiui/maml/ScreenElementRoot;


# direct methods
.method static synthetic -get0(Lmiui/maml/data/WebServiceBinder$List;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getmiui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/data/WebServiceBinder$List;->-miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/data/WebServiceBinder$List;->-miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->values()[Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lmiui/maml/data/WebServiceBinder$List;->-miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const-string/jumbo v0, "path"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const-string/jumbo v0, "xpath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    .line 283
    :cond_0
    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    .line 284
    iput-object p2, p0, Lmiui/maml/data/WebServiceBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 278
    return-void
.end method


# virtual methods
.method public fill(Lorg/json/JSONArray;)V
    .locals 14
    .param p1, "arr"    # Lorg/json/JSONArray;

    .prologue
    .line 342
    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v11, :cond_0

    .line 343
    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v12, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v11

    check-cast v11, Lmiui/maml/elements/ListScreenElement;

    iput-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    .line 344
    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v11, :cond_0

    .line 345
    const-string/jumbo v11, "WebServiceBinder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "fail to find list: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void

    .line 349
    :cond_0
    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v11}, Lmiui/maml/elements/ListScreenElement;->removeAllItems()V

    .line 350
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 351
    return-void

    .line 352
    :cond_1
    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v11}, Lmiui/maml/elements/ListScreenElement;->getColumnsInfo()Ljava/util/ArrayList;

    move-result-object v4

    .line 353
    .local v4, "columnsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/elements/ListScreenElement$ColumnInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 354
    .local v3, "columnSize":I
    new-array v10, v3, [Ljava/lang/Object;

    .line 356
    .local v10, "objects":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v7, v11, :cond_4

    .line 358
    :try_start_0
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 359
    .local v9, "object":Ljava/lang/Object;
    instance-of v11, v9, Lorg/json/JSONObject;

    if-nez v11, :cond_2

    .line 356
    .end local v9    # "object":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 362
    .restart local v9    # "object":Ljava/lang/Object;
    :cond_2
    move-object v0, v9

    nop

    nop

    move-object v6, v0

    .line 363
    .local v6, "ele":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v3, :cond_3

    .line 364
    const/4 v11, 0x0

    aput-object v11, v10, v8

    .line 365
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    .line 366
    .local v2, "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    invoke-static {}, Lmiui/maml/data/WebServiceBinder$List;->-getmiui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues()[I

    move-result-object v11

    iget-object v12, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 363
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 368
    :pswitch_0
    iget-object v11, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 384
    .end local v2    # "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    .end local v6    # "ele":Lorg/json/JSONObject;
    .end local v8    # "j":I
    .end local v9    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 385
    .local v5, "e1":Lorg/json/JSONException;
    const-string/jumbo v11, "WebServiceBinder"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "JSON error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .end local v5    # "e1":Lorg/json/JSONException;
    :cond_3
    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v11, v10}, Lmiui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    goto :goto_1

    .line 372
    .restart local v2    # "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    .restart local v6    # "ele":Lorg/json/JSONObject;
    .restart local v8    # "j":I
    .restart local v9    # "object":Ljava/lang/Object;
    :pswitch_1
    :try_start_1
    iget-object v11, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v8

    goto :goto_3

    .line 375
    :pswitch_2
    iget-object v11, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    goto :goto_3

    .line 378
    :pswitch_3
    iget-object v11, v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 341
    .end local v2    # "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    .end local v6    # "ele":Lorg/json/JSONObject;
    .end local v8    # "j":I
    .end local v9    # "object":Ljava/lang/Object;
    :cond_4
    return-void

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public fill(Lorg/w3c/dom/NodeList;)V
    .locals 13
    .param p1, "nodeList"    # Lorg/w3c/dom/NodeList;

    .prologue
    const/4 v12, 0x0

    .line 288
    if-nez p1, :cond_0

    .line 289
    return-void

    .line 291
    :cond_0
    iget-object v10, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v10, :cond_1

    .line 292
    iget-object v10, p0, Lmiui/maml/data/WebServiceBinder$List;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v11, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v10

    check-cast v10, Lmiui/maml/elements/ListScreenElement;

    iput-object v10, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    .line 293
    iget-object v10, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    if-nez v10, :cond_1

    .line 294
    const-string/jumbo v10, "WebServiceBinder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "fail to find list: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void

    .line 298
    :cond_1
    iget-object v10, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v10}, Lmiui/maml/elements/ListScreenElement;->removeAllItems()V

    .line 299
    iget-object v10, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v10}, Lmiui/maml/elements/ListScreenElement;->getColumnsInfo()Ljava/util/ArrayList;

    move-result-object v2

    .line 300
    .local v2, "columnsInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/elements/ListScreenElement$ColumnInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 301
    .local v8, "size":I
    new-array v7, v8, [Ljava/lang/Object;

    .line 303
    .local v7, "objects":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v5, v10, :cond_4

    .line 304
    invoke-interface {p1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 305
    .local v4, "ele":Lorg/w3c/dom/Element;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v8, :cond_3

    .line 306
    aput-object v12, v7, v6

    .line 307
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    .line 308
    .local v1, "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    iget-object v10, v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    invoke-static {v4, v10}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 309
    .local v0, "child":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_2

    .line 310
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v9

    .line 311
    .local v9, "textValue":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 313
    :try_start_0
    invoke-static {}, Lmiui/maml/data/WebServiceBinder$List;->-getmiui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues()[I

    move-result-object v10

    iget-object v11, v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 305
    .end local v9    # "textValue":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 315
    .restart local v9    # "textValue":Ljava/lang/String;
    :pswitch_0
    aput-object v9, v7, v6

    goto :goto_2

    .line 332
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 318
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :pswitch_1
    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v6

    goto :goto_2

    .line 321
    :pswitch_2
    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v7, v6

    goto :goto_2

    .line 324
    :pswitch_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v6

    goto :goto_2

    .line 327
    :pswitch_4
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 337
    .end local v0    # "child":Lorg/w3c/dom/Element;
    .end local v1    # "columnInfo":Lmiui/maml/elements/ListScreenElement$ColumnInfo;
    .end local v9    # "textValue":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lmiui/maml/data/WebServiceBinder$List;->mList:Lmiui/maml/elements/ListScreenElement;

    invoke-virtual {v10, v7}, Lmiui/maml/elements/ListScreenElement;->addItem([Ljava/lang/Object;)V

    .line 303
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 287
    .end local v4    # "ele":Lorg/w3c/dom/Element;
    .end local v6    # "j":I
    :cond_4
    return-void

    .line 313
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
