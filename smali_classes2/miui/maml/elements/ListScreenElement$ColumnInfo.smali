.class public Lmiui/maml/elements/ListScreenElement$ColumnInfo;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I


# instance fields
.field public mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

.field public mVarName:Ljava/lang/String;


# direct methods
.method private static synthetic -getmiui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->-miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->-miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->-miui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues:[I

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

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 187
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 188
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "List: invalid item data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mVarName:Ljava/lang/String;

    .line 191
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "type":Ljava/lang/String;
    invoke-static {}, Lmiui/maml/elements/ListScreenElement;->-get6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    sget-object v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->STRING:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    .line 185
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-static {}, Lmiui/maml/elements/ListScreenElement;->-get0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    sget-object v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->BITMAP:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    goto :goto_0

    .line 196
    :cond_2
    invoke-static {}, Lmiui/maml/elements/ListScreenElement;->-get3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lmiui/maml/elements/ListScreenElement;->-get4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    :cond_3
    sget-object v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->INTEGER:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    goto :goto_0

    .line 198
    :cond_4
    invoke-static {}, Lmiui/maml/elements/ListScreenElement;->-get1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 199
    sget-object v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->DOUBLE:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    goto :goto_0

    .line 200
    :cond_5
    invoke-static {}, Lmiui/maml/elements/ListScreenElement;->-get5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 201
    sget-object v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->LONG:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    goto :goto_0

    .line 202
    :cond_6
    invoke-static {}, Lmiui/maml/elements/ListScreenElement;->-get2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 203
    sget-object v2, Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;->FLOAT:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    iput-object v2, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    goto :goto_0

    .line 205
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "List: invalid item data type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static createColumnsInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ListScreenElement$ColumnInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    const/4 v3, 0x0

    return-object v3

    .line 233
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/elements/ListScreenElement$ColumnInfo;>;"
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "items":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 236
    .local v0, "item":Ljava/lang/String;
    new-instance v5, Lmiui/maml/elements/ListScreenElement$ColumnInfo;

    invoke-direct {v5, v0}, Lmiui/maml/elements/ListScreenElement$ColumnInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "item":Ljava/lang/String;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public validate(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    const/4 v0, 0x1

    return v0

    .line 213
    :cond_0
    invoke-static {}, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->-getmiui-maml-elements-ListScreenElement$ColumnInfo$TypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$ColumnInfo;->mType:Lmiui/maml/elements/ListScreenElement$ColumnInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 227
    const/4 v0, 0x0

    return v0

    .line 215
    :pswitch_0
    instance-of v0, p1, Ljava/lang/String;

    return v0

    .line 217
    :pswitch_1
    instance-of v0, p1, Landroid/graphics/Bitmap;

    return v0

    .line 219
    :pswitch_2
    instance-of v0, p1, Ljava/lang/Integer;

    return v0

    .line 221
    :pswitch_3
    instance-of v0, p1, Ljava/lang/Double;

    return v0

    .line 223
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Long;

    return v0

    .line 225
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Float;

    return v0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
