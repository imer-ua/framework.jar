.class public Lmiui/provider/SettingsStringUtil$SettingStringHelper;
.super Ljava/lang/Object;
.source "SettingsStringUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/SettingsStringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingStringHelper"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mSettingName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 167
    iput p3, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    .line 168
    iput-object p2, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mSettingName:Ljava/lang/String;

    .line 165
    return-void
.end method


# virtual methods
.method public read()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mSettingName:Ljava/lang/String;

    iget v2, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    .line 172
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mSettingName:Ljava/lang/String;

    iget v2, p0, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->mUserId:I

    .line 177
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
