.class Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;
.super Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockscreenConfigFileHelper"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 151
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;->mId:Ljava/lang/String;

    .line 149
    return-void
.end method


# virtual methods
.method public containsFile(Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResourcesSystem;->containsAwesomeLockscreenEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getConfigPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string/jumbo v0, "/data/system/theme/config.config"

    return-object v0
.end method

.method protected getFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmiui/content/res/ThemeResourcesSystem;->getAwesomeLockscreenFileStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public save()V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmiui/app/constants/ResourceBrowserConstants;->MAML_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lockstyle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    const-string/jumbo v2, "/"

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;->mId:Ljava/lang/String;

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    const-string/jumbo v2, ".config"

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mConfigFile:Lmiui/maml/util/ConfigFile;

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lmiui/maml/util/ConfigFile;->save(Ljava/lang/String;Landroid/content/Context;)Z

    .line 170
    return-void
.end method
