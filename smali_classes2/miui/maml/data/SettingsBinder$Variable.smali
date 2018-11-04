.class Lmiui/maml/data/SettingsBinder$Variable;
.super Lmiui/maml/data/VariableBinder$Variable;
.source "SettingsBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/SettingsBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Variable"
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-SettingsBinder$CategorySwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$miui$maml$data$SettingsBinder$Category:[I

.field public mCategory:Lmiui/maml/data/SettingsBinder$Category;

.field public mKey:Ljava/lang/String;

.field final synthetic this$0:Lmiui/maml/data/SettingsBinder;


# direct methods
.method private static synthetic -getmiui-maml-data-SettingsBinder$CategorySwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/data/SettingsBinder$Variable;->-miui-maml-data-SettingsBinder$CategorySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/data/SettingsBinder$Variable;->-miui-maml-data-SettingsBinder$CategorySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/data/SettingsBinder$Category;->values()[Lmiui/maml/data/SettingsBinder$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/data/SettingsBinder$Category;->Secure:Lmiui/maml/data/SettingsBinder$Category;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/data/SettingsBinder$Category;->System:Lmiui/maml/data/SettingsBinder$Category;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lmiui/maml/data/SettingsBinder$Variable;->-miui-maml-data-SettingsBinder$CategorySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lmiui/maml/data/SettingsBinder;Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .locals 2
    .param p1, "this$0"    # Lmiui/maml/data/SettingsBinder;
    .param p2, "node"    # Lorg/w3c/dom/Element;
    .param p3, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 34
    iput-object p1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    .line 35
    invoke-direct {p0, p2, p3}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    .line 36
    const-string/jumbo v0, "secure"

    const-string/jumbo v1, "category"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/data/SettingsBinder$Category;->Secure:Lmiui/maml/data/SettingsBinder$Category;

    :goto_0
    iput-object v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->mCategory:Lmiui/maml/data/SettingsBinder$Category;

    .line 37
    const-string/jumbo v0, "key"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    .line 34
    return-void

    .line 36
    :cond_0
    sget-object v0, Lmiui/maml/data/SettingsBinder$Category;->System:Lmiui/maml/data/SettingsBinder$Category;

    goto :goto_0
.end method


# virtual methods
.method public query()V
    .locals 6

    .prologue
    .line 45
    invoke-static {}, Lmiui/maml/data/SettingsBinder$Variable;->-getmiui-maml-data-SettingsBinder$CategorySwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mCategory:Lmiui/maml/data/SettingsBinder$Category;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 47
    :pswitch_0
    iget v1, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v4, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-float v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lmiui/maml/data/VariableBinder$Variable;->set(D)V

    goto :goto_0

    .line 57
    :pswitch_3
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v4, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-int v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lmiui/maml/data/VariableBinder$Variable;->set(D)V

    goto :goto_0

    .line 60
    :pswitch_4
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v4, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-long v4, v4

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/data/VariableBinder$Variable;->set(D)V

    goto :goto_0

    .line 65
    :pswitch_5
    iget v1, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 67
    :pswitch_6
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .restart local v0    # "str":Ljava/lang/String;
    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefStringValue:Ljava/lang/String;

    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :pswitch_7
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v4, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-float v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lmiui/maml/data/VariableBinder$Variable;->set(D)V

    goto/16 :goto_0

    .line 75
    :pswitch_8
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v4, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-int v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lmiui/maml/data/VariableBinder$Variable;->set(D)V

    goto/16 :goto_0

    .line 78
    :pswitch_9
    iget-object v1, p0, Lmiui/maml/data/SettingsBinder$Variable;->this$0:Lmiui/maml/data/SettingsBinder;

    invoke-static {v1}, Lmiui/maml/data/SettingsBinder;->-get0(Lmiui/maml/data/SettingsBinder;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/SettingsBinder$Variable;->mKey:Ljava/lang/String;

    iget-wide v4, p0, Lmiui/maml/data/VariableBinder$Variable;->mDefNumberValue:D

    double-to-long v4, v4

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/data/VariableBinder$Variable;->set(D)V

    goto/16 :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
    .end packed-switch

    .line 47
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 65
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
