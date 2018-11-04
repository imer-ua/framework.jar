.class public Lcom/miui/internal/search/SettingsTree;
.super Lcom/miui/internal/search/IndexTree;
.source "SettingsTree.java"


# static fields
.field public static final DISABLED:I = 0x1

.field public static final ENABLED:I = 0x3

.field public static final FLAG_AVAILABLE:I = 0x2

.field public static final FLAG_IGNORED:I = 0x4

.field public static final FLAG_VISIBLE:I = 0x1

.field public static final INVISIBLE:I = 0x0

.field public static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "SettingsTree"


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mCategoryString:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field private mFeature:Ljava/lang/String;

.field private mFragment:Ljava/lang/String;

.field private mIcon:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mIsCheckBox:Z

.field private mIsOldman:Z

.field private mIsSecondSpace:Z

.field private mKeywords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeywordsResource:Ljava/lang/String;

.field private mLocale:Ljava/util/Locale;

.field private mResource:Ljava/lang/String;

.field private mStatus:I

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTmp:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "json"    # Lorg/json/JSONObject;
    .param p3, "parent"    # Lcom/miui/internal/search/SettingsTree;
    .param p4, "initialize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 190
    invoke-direct {p0, p3}, Lcom/miui/internal/search/IndexTree;-><init>(Lcom/miui/internal/search/IndexTree;)V

    .line 191
    const-string/jumbo v4, "package"

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "pkg":Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/miui/internal/search/SearchUtils;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    .line 193
    const-string/jumbo v4, "resource"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    .line 194
    const-string/jumbo v4, "category"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    .line 195
    iput-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mTitle:Ljava/lang/String;

    .line 196
    const-string/jumbo v4, "keywords"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    .line 197
    const-string/jumbo v4, "summary"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mSummary:Ljava/lang/String;

    .line 198
    const-string/jumbo v4, "icon"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    .line 199
    const-string/jumbo v4, "fragment"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    .line 201
    :try_start_0
    new-instance v4, Lcom/miui/internal/search/TinyIntent;

    const-string/jumbo v5, "intent"

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/miui/internal/search/TinyIntent;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v4}, Lcom/miui/internal/search/TinyIntent;->toIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    const-string/jumbo v4, "feature"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mFeature:Ljava/lang/String;

    .line 206
    const-string/jumbo v4, "second_space"

    invoke-virtual {p2, v4, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/internal/search/SettingsTree;->mIsSecondSpace:Z

    .line 207
    const-string/jumbo v4, "is_checkbox"

    invoke-virtual {p2, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/internal/search/SettingsTree;->mIsCheckBox:Z

    .line 208
    const-string/jumbo v4, "is_oldman"

    invoke-virtual {p2, v4, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/internal/search/SettingsTree;->mIsOldman:Z

    .line 209
    const-string/jumbo v4, "son"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 210
    .local v3, "sons":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/miui/internal/search/SettingsTree;->mIsSecondSpace:Z

    invoke-static {v4}, Lcom/miui/internal/search/SearchUtils;->removeViaSecondSpace(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 216
    :cond_0
    const-string/jumbo v4, "status"

    const/4 v5, 0x3

    invoke-virtual {p2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/miui/internal/search/SettingsTree;->mStatus:I

    .line 217
    const-string/jumbo v4, "temporary"

    invoke-virtual {p2, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/internal/search/SettingsTree;->mTmp:Z

    .line 218
    iput-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mLocale:Ljava/util/Locale;

    .line 189
    return-void

    .line 202
    .end local v3    # "sons":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Lorg/json/JSONException;
    iput-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    goto :goto_0

    .line 211
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v3    # "sons":Lorg/json/JSONArray;
    :cond_1
    iget-object v4, p0, Lcom/miui/internal/search/SettingsTree;->mFeature:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/internal/search/SearchUtils;->removeViaFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 212
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 213
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {p1, v4, p0, p4}, Lcom/miui/internal/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)Lcom/miui/internal/search/SettingsTree;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/miui/internal/search/IndexTree;->addSon(Lcom/miui/internal/search/IndexTree;)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private dispatchInitialize()Z
    .locals 1

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsSecondSpace:Z

    invoke-static {v0}, Lcom/miui/internal/search/SearchUtils;->removeViaSecondSpace(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mFeature:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/search/SearchUtils;->removeViaFeature(Ljava/lang/String;)Z

    move-result v0

    .line 747
    if-nez v0, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->initialize()Z

    move-result v0

    .line 747
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getColumnValues(Lcom/miui/internal/search/RankedCursor;DZ)V
    .locals 8
    .param p1, "cursor"    # Lcom/miui/internal/search/RankedCursor;
    .param p2, "score"    # D
    .param p4, "available"    # Z

    .prologue
    .line 553
    invoke-virtual {p1}, Lcom/miui/internal/search/RankedCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "columns":[Ljava/lang/String;
    array-length v5, v0

    new-array v4, v5, [Ljava/lang/String;

    .line 555
    .local v4, "values":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/database/AbstractCursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 556
    .local v1, "extras":Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_4

    .line 557
    const-string/jumbo v5, "intent"

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 558
    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->getIntentForStart()Landroid/content/Intent;

    move-result-object v3

    .line 560
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 561
    :goto_2
    aget-object v5, v4, v2

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    goto :goto_2

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    .local v3, "intent":Landroid/content/Intent;
    goto :goto_1

    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v5

    invoke-direct {v5}, Lcom/miui/internal/search/SettingsTree;->getIntentForStart()Landroid/content/Intent;

    move-result-object v3

    .local v3, "intent":Landroid/content/Intent;
    goto :goto_1

    .line 564
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    aget-object v5, v4, v2

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 556
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 566
    :cond_3
    aget-object v5, v0, v2

    invoke-virtual {p0, v5}, Lcom/miui/internal/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    goto :goto_3

    .line 569
    :cond_4
    invoke-virtual {p1, p2, p3, v4}, Lcom/miui/internal/search/RankedCursor;->addRow(D[Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method private getIntentForStart()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 405
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 406
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    const-string/jumbo v1, ":settings:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    .line 406
    if-eqz v1, :cond_1

    .line 409
    const-string/jumbo v1, ":settings:show_fragment_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    const-string/jumbo v1, ":settings:show_fragment_title"

    invoke-virtual {p0, v3}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    :cond_0
    :goto_0
    return-object v0

    .line 413
    :cond_1
    const-string/jumbo v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    const-string/jumbo v1, ":android:show_fragment_title"

    invoke-virtual {p0, v3}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 418
    :cond_2
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v1

    invoke-direct {v1}, Lcom/miui/internal/search/SettingsTree;->getIntentForStart()Landroid/content/Intent;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private isSelected(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 16
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 714
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 715
    :cond_0
    const/4 v9, 0x1

    return v9

    .line 717
    :cond_1
    const/4 v5, 0x0

    .line 718
    .local v5, "questionCount":I
    const-string/jumbo v9, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x0

    array-length v12, v11

    move v10, v9

    move v6, v5

    .end local v5    # "questionCount":I
    .local v6, "questionCount":I
    :goto_0
    if-ge v10, v12, :cond_5

    aget-object v4, v11, v10

    .line 719
    .local v4, "pieces":Ljava/lang/String;
    const-string/jumbo v9, "="

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 720
    .local v7, "ss":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 721
    .local v3, "key":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "expect":Ljava/lang/String;
    const-string/jumbo v9, "?"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 723
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "questionCount":I
    .restart local v5    # "questionCount":I
    aget-object v1, p2, v6

    .line 725
    :goto_1
    sget-object v13, Lcom/miui/internal/search/Function;->FUNCTIONS:[Ljava/lang/String;

    const/4 v9, 0x0

    array-length v14, v13

    :goto_2
    if-ge v9, v14, :cond_4

    aget-object v2, v13, v9

    .line 726
    .local v2, "function":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 727
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/internal/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 728
    .local v8, "value":Ljava/lang/Object;
    if-eqz v8, :cond_3

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 725
    .end local v8    # "value":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 729
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_3
    const/4 v9, 0x0

    return v9

    .line 718
    .end local v2    # "function":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move v6, v5

    .end local v5    # "questionCount":I
    .restart local v6    # "questionCount":I
    goto :goto_0

    .line 734
    .end local v1    # "expect":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "pieces":Ljava/lang/String;
    .end local v7    # "ss":[Ljava/lang/String;
    :cond_5
    const/4 v9, 0x1

    return v9

    .restart local v1    # "expect":Ljava/lang/String;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "pieces":Ljava/lang/String;
    .restart local v7    # "ss":[Ljava/lang/String;
    :cond_6
    move v5, v6

    .end local v6    # "questionCount":I
    .restart local v5    # "questionCount":I
    goto :goto_1
.end method

.method private match(Ljava/lang/String;)D
    .locals 14
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 686
    const-wide/16 v2, 0x0

    .line 687
    .local v2, "score":D
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, " "

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u2011"

    const-string/jumbo v7, "-"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 689
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v4

    .line 690
    .local v4, "title":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 691
    const-string/jumbo v5, "SettingsTree"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "null title: resource = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 692
    const-string/jumbo v7, ", class = "

    .line 691
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 692
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 691
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-wide v2

    .line 695
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, " "

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\u2011"

    const-string/jumbo v7, "-"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 696
    invoke-static {p1, v4}, Lcom/miui/internal/search/SearchUtils;->doSimpleMatch(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 697
    cmpl-double v5, v2, v12

    if-ltz v5, :cond_1

    return-wide v12

    .line 701
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getKeywords()[Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "keywords":[Ljava/lang/String;
    const/4 v5, 0x0

    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v0, v1, v5

    .line 703
    .local v0, "keyword":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, " "

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\u2011"

    const-string/jumbo v9, "-"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 704
    invoke-static {v0, p1}, Lcom/miui/internal/search/SearchUtils;->doSimpleMatch(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    sub-double/2addr v8, v10

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 705
    cmpl-double v7, v2, v12

    if-ltz v7, :cond_2

    return-wide v12

    .line 702
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 708
    .end local v0    # "keyword":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPinyin()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/miui/internal/search/SearchUtils;->doPinyinMatch(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 709
    const-wide/16 v6, 0x0

    cmpg-double v5, v2, v6

    if-gez v5, :cond_4

    const-wide/16 v2, 0x0

    .line 710
    :cond_4
    return-wide v2
.end method

.method protected static newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;)Lcom/miui/internal/search/SettingsTree;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "parent"    # Lcom/miui/internal/search/SettingsTree;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/miui/internal/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    return-object v0
.end method

.method protected static newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)Lcom/miui/internal/search/SettingsTree;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "parent"    # Lcom/miui/internal/search/SettingsTree;
    .param p3, "initialize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 149
    const-string/jumbo v7, "class"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "className":Ljava/lang/String;
    const-string/jumbo v7, "package"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, "pkg":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 152
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/miui/internal/search/SettingsTree;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 155
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "com.android.settings"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 156
    :cond_1
    new-instance v5, Lcom/miui/internal/search/SettingsTree;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/miui/internal/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)V

    .line 157
    .local v5, "ret":Lcom/miui/internal/search/SettingsTree;
    if-eqz p3, :cond_2

    invoke-direct {v5}, Lcom/miui/internal/search/SettingsTree;->dispatchInitialize()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v5, v6

    .end local v5    # "ret":Lcom/miui/internal/search/SettingsTree;
    :cond_2
    return-object v5

    .line 153
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_4
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 163
    move-object v4, v1

    .line 165
    :cond_5
    invoke-static {p0, v4}, Lcom/miui/internal/search/SearchUtils;->isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 167
    const-string/jumbo v7, "SettingsTree"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " doesn\'t exist any more"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-object v6

    .line 159
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".search.CustomSettingsTree"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 172
    :cond_7
    :try_start_0
    const-string/jumbo v7, "com.android.settings"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v4, "com.android.settings"

    .line 171
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_8
    invoke-static {p0, v4}, Lcom/miui/internal/search/SearchUtils;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v1, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 173
    .local v2, "clazz":Ljava/lang/Class;
    const-class v7, Lcom/miui/internal/search/SettingsTree;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 174
    new-instance v7, Ljava/lang/ClassCastException;

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cannot cast "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v9, Lcom/miui/internal/search/SettingsTree;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 174
    invoke-direct {v7, v8}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v2    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SettingsTree"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "drop subtree under "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2, v10}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    return-object v6

    .line 177
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "clazz":Ljava/lang/Class;
    :cond_9
    const/4 v7, 0x4

    :try_start_1
    new-array v7, v7, [Ljava/lang/Class;

    .line 178
    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Lorg/json/JSONObject;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Lcom/miui/internal/search/SettingsTree;

    const/4 v9, 0x2

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v8, v7, v9

    .line 177
    invoke-virtual {v2, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 179
    .local v0, "c":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 180
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    aput-object p2, v7, v8

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/search/SettingsTree;

    .line 181
    .restart local v5    # "ret":Lcom/miui/internal/search/SettingsTree;
    if-eqz p3, :cond_a

    invoke-direct {v5}, Lcom/miui/internal/search/SettingsTree;->dispatchInitialize()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_a

    :goto_1
    return-object v6

    :cond_a
    move-object v6, v5

    goto :goto_1
.end method

.method public static newInstance(Landroid/content/Context;Lorg/json/JSONObject;Z)Lcom/miui/internal/search/SettingsTree;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "initialize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/miui/internal/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;Z)Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    return-object v0
.end method

.method private setColumnValues([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 616
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 617
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcom/miui/internal/search/SettingsTree;->setColumnValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_0
    return-void
.end method

.method private updateCategoryRelated()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/internal/search/SettingsTree;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/internal/search/SearchUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategoryString:Ljava/lang/String;

    .line 810
    :cond_0
    return-void
.end method

.method private updateKeywords()V
    .locals 3

    .prologue
    .line 817
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 819
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/miui/internal/search/SettingsTree;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    .line 818
    invoke-static {v1, v2}, Lcom/miui/internal/search/SearchUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 819
    const-string/jumbo v2, ";"

    .line 818
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, "keywords":[Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    if-nez v1, :cond_1

    .line 821
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    .line 825
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 816
    .end local v0    # "keywords":[Ljava/lang/String;
    :cond_0
    return-void

    .line 823
    .restart local v0    # "keywords":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private updateLocale()V
    .locals 2

    .prologue
    .line 796
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mLocale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    return-void

    .line 799
    :cond_0
    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateResourceRelated()V

    .line 800
    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateCategoryRelated()V

    .line 801
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mLocale:Ljava/util/Locale;

    .line 795
    return-void
.end method

.method private updateResourceRelated()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/miui/internal/search/SettingsTree;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/internal/search/SearchUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mTitle:Ljava/lang/String;

    .line 804
    :cond_0
    return-void
.end method


# virtual methods
.method public commit(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v1

    if-nez v1, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 742
    .local v0, "tree":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .end local v0    # "tree":Lorg/json/JSONObject;
    :cond_0
    return-void

    .line 742
    .restart local v0    # "tree":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final delete(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 543
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/search/SettingsTree;->isSelected(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final dispatchOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 767
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/search/SettingsTree;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 768
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 769
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "son$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/search/SettingsTree;

    .line 770
    .local v0, "son":Lcom/miui/internal/search/SettingsTree;
    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/search/SettingsTree;->dispatchOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 766
    .end local v0    # "son":Lcom/miui/internal/search/SettingsTree;
    .end local v1    # "son$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected getCategory(Z)Ljava/lang/String;
    .locals 1
    .param p1, "localized"    # Z

    .prologue
    .line 304
    if-eqz p1, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateLocale()V

    .line 307
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategoryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategoryString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCheckable()Lcom/miui/internal/search/BackgroundCheckable;
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 574
    const-string/jumbo v0, "package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 574
    :cond_0
    const-string/jumbo v0, "class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 574
    :cond_1
    const-string/jumbo v0, "resource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    return-object v0

    .line 574
    :cond_2
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 582
    invoke-virtual {p0, v1}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 574
    :cond_3
    const-string/jumbo v0, "category"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 584
    invoke-virtual {p0, v1}, Lcom/miui/internal/search/SettingsTree;->getCategory(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 574
    :cond_4
    const-string/jumbo v0, "category_origin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 586
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    return-object v0

    .line 574
    :cond_5
    const-string/jumbo v0, "path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 588
    invoke-virtual {p0, v1, v1}, Lcom/miui/internal/search/SettingsTree;->getPath(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 574
    :cond_6
    const-string/jumbo v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 590
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    return-object v0

    .line 574
    :cond_7
    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 592
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mSummary:Ljava/lang/String;

    return-object v0

    .line 574
    :cond_8
    const-string/jumbo v0, "icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 594
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getIcon()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 574
    :cond_9
    const-string/jumbo v0, "fragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 596
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    return-object v0

    .line 574
    :cond_a
    const-string/jumbo v0, "intent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 598
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "use getIntentForStart() instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_b
    const-string/jumbo v0, "feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 601
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was removed once initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_d
    const-string/jumbo v0, "second_space"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "is_checkbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 603
    iget-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsCheckBox:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 574
    :cond_e
    const-string/jumbo v0, "is_oldman"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 605
    iget-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsOldman:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 574
    :cond_f
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 607
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getStatus()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 574
    :cond_10
    const-string/jumbo v0, "temporary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 609
    iget-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mTmp:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 611
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/search/SettingsTree;->getIcon()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 377
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 378
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 389
    :goto_0
    return-object v0

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.SubSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const-string/jumbo v1, ":settings:show_fragment"

    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    .line 383
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 387
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v0, 0x0

    .local v0, "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method protected getKeywords()[Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 312
    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateKeywords()V

    .line 313
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mKeywords:Ljava/util/List;

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    const-string/jumbo v0, "com.android.settings"

    return-object v0
.end method

.method protected final getPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/internal/search/SearchUtils;->getPackageContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 476
    .local v0, "result":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 479
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/miui/internal/search/IndexTree;
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/miui/internal/search/SettingsTree;
    .locals 1

    .prologue
    .line 355
    invoke-super {p0}, Lcom/miui/internal/search/IndexTree;->getParent()Lcom/miui/internal/search/IndexTree;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/search/SettingsTree;

    return-object v0
.end method

.method protected getPath(ZZ)Ljava/lang/String;
    .locals 3
    .param p1, "localized"    # Z
    .param p2, "category"    # Z

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v0, ""

    .line 342
    .local v0, "path":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/miui/internal/search/SettingsTree;->getCategory(Z)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 341
    .end local v0    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getParent()Lcom/miui/internal/search/SettingsTree;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/miui/internal/search/SettingsTree;->getPath(ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 345
    .restart local v0    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected getPinyin()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 324
    const-string/jumbo v2, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 325
    return-object v1

    .line 327
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0}, Lcom/miui/internal/search/SearchUtils;->getPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSons()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/internal/search/SettingsTree;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    invoke-super {p0}, Lcom/miui/internal/search/IndexTree;->getSons()Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method protected getStatus()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/miui/internal/search/SettingsTree;->mStatus:I

    return v0
.end method

.method protected getTitle(Z)Ljava/lang/String;
    .locals 1
    .param p1, "localized"    # Z

    .prologue
    .line 290
    if-eqz p1, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateLocale()V

    .line 293
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/search/SettingsTree;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final getUri()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://com.miui.settings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2, v2}, Lcom/miui/internal/search/SettingsTree;->getPath(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize()Z
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method public final insert(Landroid/content/ContentValues;)Lcom/miui/internal/search/IndexTree;
    .locals 9
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    .line 523
    const-string/jumbo v5, "parent"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, "parent":Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 525
    return-object v8

    .line 527
    :cond_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 528
    .local v1, "columns":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 530
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 531
    .local v3, "json":Lorg/json/JSONObject;
    const/4 v5, 0x0

    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 532
    .local v0, "column":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 534
    .end local v0    # "column":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/miui/internal/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, p0}, Lcom/miui/internal/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/miui/internal/search/SettingsTree;)Lcom/miui/internal/search/SettingsTree;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 535
    .end local v3    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 537
    .local v2, "e":Lorg/json/JSONException;
    return-object v8
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 783
    return-void
.end method

.method public final query(Lcom/miui/internal/search/RankedCursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "cursor"    # Lcom/miui/internal/search/RankedCursor;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 486
    invoke-static {}, Lcom/miui/internal/search/SearchUtils;->isOldmanMode()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/miui/internal/search/SettingsTree;->mIsOldman:Z

    if-eqz v5, :cond_1

    .line 487
    :cond_0
    const/4 v4, 0x0

    .line 489
    .local v4, "status":I
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 493
    :goto_0
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_2

    return v8

    .line 486
    .end local v4    # "status":I
    :cond_1
    return v8

    .line 490
    .restart local v4    # "status":I
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SettingsTree"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hide because exception occurs when query: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/miui/internal/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 494
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_4

    const/4 v0, 0x1

    .line 495
    .local v0, "available":Z
    :goto_1
    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_3

    invoke-direct {p0, p3, p4}, Lcom/miui/internal/search/SettingsTree;->isSelected(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 496
    invoke-direct {p0, p2}, Lcom/miui/internal/search/SettingsTree;->match(Ljava/lang/String;)D

    move-result-wide v2

    .line 497
    .local v2, "score":D
    const-wide/16 v6, 0x0

    cmpl-double v5, v2, v6

    if-lez v5, :cond_3

    .line 498
    invoke-direct {p0, p1, v2, v3, v0}, Lcom/miui/internal/search/SettingsTree;->getColumnValues(Lcom/miui/internal/search/RankedCursor;DZ)V

    .line 501
    .end local v2    # "score":D
    :cond_3
    return v0

    .line 494
    .end local v0    # "available":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "available":Z
    goto :goto_1
.end method

.method public setColumnValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 623
    const-string/jumbo v0, "resource"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    .line 626
    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateResourceRelated()V

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    const-string/jumbo v0, "category"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 629
    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    .line 630
    invoke-direct {p0}, Lcom/miui/internal/search/SettingsTree;->updateCategoryRelated()V

    goto :goto_0

    .line 623
    :cond_2
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 634
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 635
    const-string/jumbo v2, " should not be modified, you may modify "

    .line 634
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 635
    const-string/jumbo v2, " via resource"

    .line 634
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_4
    const-string/jumbo v0, "path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "keywords"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 637
    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    goto :goto_0

    .line 623
    :cond_5
    const-string/jumbo v0, "summary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 640
    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mSummary:Ljava/lang/String;

    goto :goto_0

    .line 623
    :cond_6
    const-string/jumbo v0, "icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 643
    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    goto :goto_0

    .line 623
    :cond_7
    const-string/jumbo v0, "fragment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 646
    iput-object p2, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    goto :goto_0

    .line 623
    :cond_8
    const-string/jumbo v0, "intent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 649
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Use setIntent() instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_9
    const-string/jumbo v0, "feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 652
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was removed once initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_b
    const-string/jumbo v0, "second_space"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "is_checkbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 654
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsCheckBox:Z

    goto/16 :goto_0

    .line 623
    :cond_c
    const-string/jumbo v0, "is_oldman"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 657
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/internal/search/SettingsTree;->mIsOldman:Z

    goto/16 :goto_0

    .line 623
    :cond_d
    const-string/jumbo v0, "package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 663
    :cond_e
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cannot be modified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_f
    const-string/jumbo v0, "class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "temporary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1
.end method

.method public final setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 435
    iput-object p1, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    .line 434
    return-void
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 228
    iget-boolean v6, p0, Lcom/miui/internal/search/SettingsTree;->mTmp:Z

    if-eqz v6, :cond_0

    .line 229
    return-object v7

    .line 231
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 233
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPackage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "com.android.settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 234
    const-string/jumbo v6, "package"

    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/miui/internal/search/SettingsTree;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 237
    const-string/jumbo v6, "class"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    :cond_2
    iget-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 240
    const-string/jumbo v6, "resource"

    iget-object v7, p0, Lcom/miui/internal/search/SettingsTree;->mResource:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    :cond_3
    iget-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 243
    const-string/jumbo v6, "category"

    iget-object v7, p0, Lcom/miui/internal/search/SettingsTree;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    :cond_4
    iget-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 246
    const-string/jumbo v6, "keywords"

    iget-object v7, p0, Lcom/miui/internal/search/SettingsTree;->mKeywordsResource:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    :cond_5
    iget-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mSummary:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 249
    const-string/jumbo v6, "summary"

    iget-object v7, p0, Lcom/miui/internal/search/SettingsTree;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    :cond_6
    iget-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 252
    const-string/jumbo v6, "icon"

    iget-object v7, p0, Lcom/miui/internal/search/SettingsTree;->mIcon:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    :cond_7
    iget-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 255
    const-string/jumbo v6, "fragment"

    iget-object v7, p0, Lcom/miui/internal/search/SettingsTree;->mFragment:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    :cond_8
    iget-object v6, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    if-eqz v6, :cond_9

    .line 258
    const-string/jumbo v6, "intent"

    new-instance v7, Lcom/miui/internal/search/TinyIntent;

    iget-object v8, p0, Lcom/miui/internal/search/SettingsTree;->mIntent:Landroid/content/Intent;

    invoke-direct {v7, v8}, Lcom/miui/internal/search/TinyIntent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v7}, Lcom/miui/internal/search/TinyIntent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    :cond_9
    iget-boolean v6, p0, Lcom/miui/internal/search/SettingsTree;->mIsCheckBox:Z

    if-eqz v6, :cond_a

    .line 261
    const-string/jumbo v6, "is_checkbox"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 263
    :cond_a
    iget-boolean v6, p0, Lcom/miui/internal/search/SettingsTree;->mIsOldman:Z

    if-nez v6, :cond_b

    .line 264
    const-string/jumbo v6, "is_oldman"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 266
    :cond_b
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v6

    if-eqz v6, :cond_e

    .line 267
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 268
    .local v5, "sons":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/miui/internal/search/SettingsTree;->getSons()Ljava/util/LinkedList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "son$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/internal/search/SettingsTree;

    .line 269
    .local v3, "son":Lcom/miui/internal/search/SettingsTree;
    invoke-virtual {v3}, Lcom/miui/internal/search/SettingsTree;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 270
    .local v2, "o":Lorg/json/JSONObject;
    if-eqz v2, :cond_c

    .line 271
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    .end local v2    # "o":Lorg/json/JSONObject;
    .end local v3    # "son":Lcom/miui/internal/search/SettingsTree;
    .end local v4    # "son$iterator":Ljava/util/Iterator;
    .end local v5    # "sons":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Lorg/json/JSONException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 274
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v4    # "son$iterator":Ljava/util/Iterator;
    .restart local v5    # "sons":Lorg/json/JSONArray;
    :cond_d
    :try_start_1
    const-string/jumbo v6, "son"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    .end local v4    # "son$iterator":Ljava/util/Iterator;
    .end local v5    # "sons":Lorg/json/JSONArray;
    :cond_e
    return-object v1
.end method

.method public final update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 507
    invoke-direct {p0, p2, p3}, Lcom/miui/internal/search/SettingsTree;->isSelected(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 508
    const/4 v3, 0x0

    return v3

    .line 510
    :cond_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 511
    .local v0, "columns":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 512
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 513
    .local v2, "newValues":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 514
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/miui/internal/search/SettingsTree;->setColumnValues([Ljava/lang/String;[Ljava/lang/String;)V

    .line 517
    const/4 v3, 0x1

    return v3
.end method
