.class public Lmiui/maml/MamlConfigSettings;
.super Lmiui/preference/PreferenceActivity;
.source "MamlConfigSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/MamlConfigSettings$AppPickerItem;,
        Lmiui/maml/MamlConfigSettings$CheckboxItem;,
        Lmiui/maml/MamlConfigSettings$ConfigFileHelper;,
        Lmiui/maml/MamlConfigSettings$ImagePickerItem;,
        Lmiui/maml/MamlConfigSettings$Item;,
        Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;,
        Lmiui/maml/MamlConfigSettings$NumberChoiceItem;,
        Lmiui/maml/MamlConfigSettings$NumberInputItem;,
        Lmiui/maml/MamlConfigSettings$PickerItem;,
        Lmiui/maml/MamlConfigSettings$StringChoiceItem;,
        Lmiui/maml/MamlConfigSettings$StringInputItem;,
        Lmiui/maml/MamlConfigSettings$ValueChoiceItem;,
        Lmiui/maml/MamlConfigSettings$VariableItem;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "config.xml"

.field public static final EXTRA_MAML_CODE:Ljava/lang/String; = "maml_code"

.field public static final EXTRA_MAML_ID:Ljava/lang/String; = "maml_id"

.field public static final EXTRA_MAML_PATH:Ljava/lang/String; = "maml_path"

.field private static final LOG_TAG:Ljava/lang/String; = "MamlConfigSettings"

.field private static final TAG_ROOT:Ljava/lang/String; = "Config"


# instance fields
.field private mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

.field private mNextRequestCode:I

.field private mPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/MamlConfigSettings$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestCodeObjMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lmiui/maml/MamlConfigSettings;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    .locals 1

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/MamlConfigSettings;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lmiui/maml/MamlConfigSettings;)I
    .locals 1

    invoke-direct {p0}, Lmiui/maml/MamlConfigSettings;->getNextRequestCode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lmiui/maml/MamlConfigSettings;Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$Item;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings;->createItem(Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$Item;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lmiui/maml/MamlConfigSettings;Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "rootScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "group"    # Lorg/w3c/dom/Element;

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/MamlConfigSettings;->createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/maml/MamlConfigSettings;ILjava/lang/Object;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/MamlConfigSettings;->putRequestCodeObj(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    .line 67
    const/16 v0, 0x64

    iput v0, p0, Lmiui/maml/MamlConfigSettings;->mNextRequestCode:I

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    .line 49
    return-void
.end method

.method public static containsConfig(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packagePath"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/maml/MamlConfigSettings;->containsConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static containsConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "packagePath"    # Ljava/lang/String;
    .param p1, "innerPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 247
    if-nez p0, :cond_0

    .line 248
    return v4

    .line 250
    :cond_0
    const/4 v2, 0x0

    .line 252
    .local v2, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    .end local v2    # "zipfile":Ljava/util/zip/ZipFile;
    .local v3, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    .end local p1    # "innerPath":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "config.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "entryName":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    .line 258
    :cond_2
    if-eqz v3, :cond_3

    .line 260
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 254
    :cond_3
    :goto_0
    return v4

    .line 261
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "entryName":Ljava/lang/String;
    .end local v3    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local p1    # "innerPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 256
    .end local v2    # "zipfile":Ljava/util/zip/ZipFile;
    .end local p1    # "innerPath":Ljava/lang/String;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 258
    if-eqz v2, :cond_4

    .line 260
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 265
    :cond_4
    :goto_2
    return v4

    .line 261
    :catch_2
    move-exception v0

    goto :goto_2

    .line 257
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 258
    :goto_3
    if-eqz v2, :cond_5

    .line 260
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 257
    :cond_5
    :goto_4
    throw v4

    .line 261
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 257
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "zipfile":Ljava/util/zip/ZipFile;
    .local v2, "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 255
    .end local v2    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v3    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1
.end method

.method public static containsLockstyleConfig()Z
    .locals 2

    .prologue
    .line 269
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    const-string/jumbo v1, "config.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResourcesSystem;->containsAwesomeLockscreenEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static createConfigFileHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string/jumbo v0, "lockstyle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {p0, p1}, Lmiui/maml/MamlConfigSettings;->getComponentId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 205
    :cond_0
    new-instance v0, Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lmiui/maml/MamlConfigSettings$LockscreenConfigFileHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-object v0

    .line 207
    :cond_1
    new-instance v0, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method private createGroup(Landroid/preference/PreferenceScreen;Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "rootScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "group"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v2, 0x0

    .line 315
    if-nez p2, :cond_0

    .line 316
    return-void

    .line 318
    :cond_0
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, "category":Landroid/preference/PreferenceCategory;
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 320
    const-string/jumbo v1, "text"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 321
    const-string/jumbo v1, "summary"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 323
    new-instance v1, Lmiui/maml/MamlConfigSettings$2;

    invoke-direct {v1, p0, v0}, Lmiui/maml/MamlConfigSettings$2;-><init>(Lmiui/maml/MamlConfigSettings;Landroid/preference/PreferenceCategory;)V

    invoke-static {p2, v2, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 314
    return-void
.end method

.method private createItem(Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$Item;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 335
    const-string/jumbo v0, "StringInput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Lmiui/maml/MamlConfigSettings$StringInputItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$StringInputItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$StringInputItem;)V

    return-object v0

    .line 337
    :cond_0
    const-string/jumbo v0, "CheckBox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    new-instance v0, Lmiui/maml/MamlConfigSettings$CheckboxItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$CheckboxItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$CheckboxItem;)V

    return-object v0

    .line 339
    :cond_1
    const-string/jumbo v0, "NumberInput"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    new-instance v0, Lmiui/maml/MamlConfigSettings$NumberInputItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$NumberInputItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$NumberInputItem;)V

    return-object v0

    .line 341
    :cond_2
    const-string/jumbo v0, "StringChoice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    new-instance v0, Lmiui/maml/MamlConfigSettings$StringChoiceItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$StringChoiceItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$StringChoiceItem;)V

    return-object v0

    .line 343
    :cond_3
    const-string/jumbo v0, "NumberChoice"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    new-instance v0, Lmiui/maml/MamlConfigSettings$NumberChoiceItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$NumberChoiceItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$NumberChoiceItem;)V

    return-object v0

    .line 345
    :cond_4
    const-string/jumbo v0, "AppPicker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    new-instance v0, Lmiui/maml/MamlConfigSettings$AppPickerItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$AppPickerItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$AppPickerItem;)V

    return-object v0

    .line 347
    :cond_5
    const-string/jumbo v0, "ImagePicker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 348
    new-instance v0, Lmiui/maml/MamlConfigSettings$ImagePickerItem;

    invoke-direct {v0, p0, v1}, Lmiui/maml/MamlConfigSettings$ImagePickerItem;-><init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$ImagePickerItem;)V

    return-object v0

    .line 350
    :cond_6
    return-object v1
.end method

.method private createPreferenceScreen()V
    .locals 12

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 274
    .local v9, "rootScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v9}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 276
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 277
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 278
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v7, 0x0

    .line 280
    .local v7, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 281
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    iget-object v10, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->getConfigFileStream(Ljava/util/Locale;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 282
    .local v7, "is":Ljava/io/InputStream;
    if-nez v7, :cond_1

    .line 307
    if-eqz v7, :cond_0

    .line 308
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    goto :goto_0

    .line 284
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 285
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 286
    .local v8, "root":Lorg/w3c/dom/Element;
    if-nez v8, :cond_3

    .line 307
    if-eqz v7, :cond_2

    .line 308
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 287
    :cond_2
    :goto_1
    return-void

    .line 309
    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 288
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_4
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Config"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    if-nez v10, :cond_5

    .line 307
    if-eqz v7, :cond_4

    .line 308
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 289
    :cond_4
    :goto_2
    return-void

    .line 309
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 291
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_6
    const-string/jumbo v10, "Group"

    new-instance v11, Lmiui/maml/MamlConfigSettings$1;

    invoke-direct {v11, p0, v9}, Lmiui/maml/MamlConfigSettings$1;-><init>(Lmiui/maml/MamlConfigSettings;Landroid/preference/PreferenceScreen;)V

    invoke-static {v8, v10, v11}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V
    :try_end_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 307
    if-eqz v7, :cond_6

    .line 308
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 272
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "root":Lorg/w3c/dom/Element;
    :cond_6
    :goto_3
    return-void

    .line 309
    .restart local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "root":Lorg/w3c/dom/Element;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 303
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "root":Lorg/w3c/dom/Element;
    :catch_4
    move-exception v4

    .line 304
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 307
    if-eqz v7, :cond_6

    .line 308
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    .line 309
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 301
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v3

    .line 302
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 307
    if-eqz v7, :cond_6

    .line 308
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_3

    .line 309
    :catch_7
    move-exception v3

    goto :goto_3

    .line 299
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v6

    .line 300
    .local v6, "e":Lorg/xml/sax/SAXException;
    :try_start_c
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 307
    if-eqz v7, :cond_6

    .line 308
    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_3

    .line 309
    :catch_9
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 297
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "e":Lorg/xml/sax/SAXException;
    :catch_a
    move-exception v5

    .line 298
    .local v5, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_e
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 307
    if-eqz v7, :cond_6

    .line 308
    :try_start_f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_3

    .line 309
    :catch_b
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 305
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_0
    move-exception v10

    .line 307
    if-eqz v7, :cond_7

    .line 308
    :try_start_10
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 305
    :cond_7
    :goto_4
    throw v10

    .line 309
    :catch_c
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_4
.end method

.method public static getComponentId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 755
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 756
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 757
    const-string/jumbo v1, "local_id"

    aput-object v1, v2, v7

    .line 759
    .local v2, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "content://com.android.thememanager.provider/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 761
    .local v6, "cs":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 762
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 763
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 767
    :cond_0
    return-object v3
.end method

.method private getNextRequestCode()I
    .locals 2

    .prologue
    .line 705
    iget v0, p0, Lmiui/maml/MamlConfigSettings;->mNextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmiui/maml/MamlConfigSettings;->mNextRequestCode:I

    return v0
.end method

.method private getRequestCodeObj(I)Ljava/lang/Object;
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 713
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private putRequestCodeObj(ILjava/lang/Object;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 709
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mRequestCodeObjMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 732
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings;->getRequestCodeObj(I)Ljava/lang/Object;

    move-result-object v1

    .line 733
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 734
    instance-of v2, v1, Lmiui/maml/MamlConfigSettings$PickerItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 735
    nop

    nop

    .line 736
    .local v0, "item":Lmiui/maml/MamlConfigSettings$PickerItem;
    invoke-virtual {v0, p2, p3}, Lmiui/maml/MamlConfigSettings$PickerItem;->onActivityResult(ILandroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 737
    iget-object v2, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v2}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    .line 731
    .end local v0    # "item":Lmiui/maml/MamlConfigSettings$PickerItem;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "maml_code"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "maml_path"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "mamlPath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "maml_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "mamlId":Ljava/lang/String;
    invoke-static {p0, v0, v2, v1}, Lmiui/maml/MamlConfigSettings;->createConfigFileHelper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    .line 187
    iget-object v3, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    const-string/jumbo v4, "config.xml"

    invoke-virtual {v3, v4}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->containsFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 189
    return-void

    .line 192
    :cond_0
    const v3, 0x11030006

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 194
    invoke-virtual {p0}, Lmiui/preference/PreferenceActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    const v4, 0x110900b4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 195
    invoke-virtual {p0}, Lmiui/preference/PreferenceActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 197
    invoke-direct {p0}, Lmiui/maml/MamlConfigSettings;->createPreferenceScreen()V

    .line 180
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    .line 228
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->close()V

    .line 229
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    .line 226
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 216
    :cond_0
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 222
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    .line 220
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 718
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/MamlConfigSettings$Item;

    .line 720
    .local v0, "item":Lmiui/maml/MamlConfigSettings$Item;
    if-nez v0, :cond_0

    .line 721
    const/4 v3, 0x0

    return v3

    .line 723
    :cond_0
    invoke-virtual {v0, p2}, Lmiui/maml/MamlConfigSettings$Item;->OnValueChange(Ljava/lang/Object;)Z

    move-result v2

    .line 724
    .local v2, "ret":Z
    if-eqz v2, :cond_1

    .line 725
    iget-object v3, p0, Lmiui/maml/MamlConfigSettings;->mConfigFileHelper:Lmiui/maml/MamlConfigSettings$ConfigFileHelper;

    invoke-virtual {v3}, Lmiui/maml/MamlConfigSettings$ConfigFileHelper;->save()V

    .line 727
    :cond_1
    return v2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 745
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lmiui/maml/MamlConfigSettings;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/MamlConfigSettings$Item;

    .line 747
    .local v0, "item":Lmiui/maml/MamlConfigSettings$Item;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/maml/MamlConfigSettings$Item;->onClick()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
