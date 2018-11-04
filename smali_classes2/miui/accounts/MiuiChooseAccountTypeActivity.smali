.class public Lmiui/accounts/MiuiChooseAccountTypeActivity;
.super Landroid/preference/PreferenceActivity;
.source "MiuiChooseAccountTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;,
        Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiChooseAccountType"


# instance fields
.field private mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeToAuthenticatorInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    iput-object v0, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method private hasXiaomiAccount()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 121
    const-string/jumbo v4, "account"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 123
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string/jumbo v4, "com.xiaomi"

    .line 122
    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 124
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v4, v0

    if-lez v4, :cond_0

    .line 126
    return v2

    .line 130
    :cond_0
    const-string/jumbo v4, "com.xiaomi.unactivated"

    .line 129
    invoke-virtual {v1, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 131
    array-length v4, v0

    if-lez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private setResultAndFinish(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 135
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "accountType"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 138
    const-string/jumbo v1, "MiuiChooseAccountType"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string/jumbo v1, "MiuiChooseAccountType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ChooseAccountTypeActivity.setResultAndFinish: selected account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 134
    return-void
.end method


# virtual methods
.method protected buildTypeToAuthDescriptionMap()V
    .locals 15

    .prologue
    .line 146
    invoke-direct {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->hasXiaomiAccount()Z

    move-result v5

    .line 147
    .local v5, "hasXiaomiAccount":Z
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v11

    const/4 v9, 0x0

    array-length v12, v11

    move v10, v9

    :goto_0
    if-ge v10, v12, :cond_4

    aget-object v2, v11, v10

    .line 149
    .local v2, "desc":Landroid/accounts/AuthenticatorDescription;
    const/4 v7, 0x0

    .line 150
    .local v7, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 152
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v9, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {p0, v9, v13}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 153
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v13, v2, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    .line 154
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 155
    iget v13, v2, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 154
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 156
    .local v8, "sequence":Ljava/lang/CharSequence;
    if-eqz v8, :cond_0

    .line 157
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 175
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "sequence":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    const-string/jumbo v9, "com.xiaomi.unactivated"

    iget-object v13, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 176
    const-string/jumbo v9, "com.xiaomi"

    iget-object v13, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v5

    .line 175
    :goto_2
    if-nez v9, :cond_1

    .line 178
    new-instance v1, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    invoke-direct {v1, v2, v7, v6}, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;-><init>(Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 179
    .local v1, "authInfo":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    iget-object v9, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    iget-object v13, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v9, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v1    # "authInfo":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    :cond_1
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    .line 164
    .restart local v7    # "name":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 166
    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v9, "MiuiChooseAccountType"

    const/4 v13, 0x5

    invoke-static {v9, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 167
    const-string/jumbo v9, "MiuiChooseAccountType"

    .line 168
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "No icon resource for account type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 167
    invoke-static {v9, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 159
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v3

    .line 161
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v9, "MiuiChooseAccountType"

    const/4 v13, 0x5

    invoke-static {v9, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 162
    const-string/jumbo v9, "MiuiChooseAccountType"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "No icon name for account type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 175
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7    # "name":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x1

    goto :goto_2

    .line 176
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 145
    .end local v2    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const/high16 v11, 0x11050000

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 48
    const-string/jumbo v11, "pref_add_account"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 51
    .local v6, "prefAddAccount":Landroid/preference/PreferenceCategory;
    const/4 v8, 0x0

    .line 52
    .local v8, "setOfAllowableAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, "allowableAccountTypes"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 53
    .local v10, "validAccountTypes":[Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 54
    new-instance v8, Ljava/util/HashSet;

    .line 55
    .end local v8    # "setOfAllowableAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v11, v10

    .line 54
    invoke-direct {v8, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 56
    .local v8, "setOfAllowableAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v11, 0x0

    array-length v12, v10

    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v9, v10, v11

    .line 57
    .local v9, "type":Ljava/lang/String;
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 62
    .end local v8    # "setOfAllowableAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "type":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->buildTypeToAuthDescriptionMap()V

    .line 66
    new-instance v11, Ljava/util/ArrayList;

    .line 67
    iget-object v12, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    .line 66
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    .line 68
    iget-object v11, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 70
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 71
    .restart local v9    # "type":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    .line 72
    .local v5, "info":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    if-eqz v8, :cond_2

    .line 73
    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 76
    :cond_2
    iget-object v11, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;>;"
    .end local v5    # "info":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    .end local v9    # "type":Ljava/lang/String;
    :cond_3
    iget-object v11, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 80
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v11, "errorMessage"

    .line 82
    const-string/jumbo v12, "no allowable account types"

    .line 81
    invoke-virtual {v2, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v11, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v11

    const/4 v12, -0x1

    invoke-virtual {p0, v12, v11}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 85
    return-void

    .line 88
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_4
    iget-object v11, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 89
    iget-object v11, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    iget-object v11, v11, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v11, v11, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-direct {p0, v11}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V

    .line 90
    return-void

    .line 93
    :cond_5
    iget-object v11, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "authInfo$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    .line 94
    .local v0, "authInfo":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    new-instance v7, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;

    .line 95
    iget-object v11, v0, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v11, v11, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v12, v0, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v13, v0, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->name:Ljava/lang/String;

    .line 94
    invoke-direct {v7, p0, v11, v12, v13}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 96
    .local v7, "preference":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 97
    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 43
    .end local v0    # "authInfo":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    .end local v7    # "preference":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    :cond_6
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 104
    instance-of v2, p2, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 105
    nop

    nop

    .line 106
    .local v0, "pref":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    const-string/jumbo v2, "MiuiChooseAccountType"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string/jumbo v2, "MiuiChooseAccountType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempting to add account of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 108
    invoke-virtual {v0}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, p2

    .line 110
    nop

    nop

    .line 111
    .local v1, "provider":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    invoke-virtual {v1}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V

    .line 112
    const/4 v2, 0x1

    return v2

    .line 114
    .end local v0    # "pref":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    .end local v1    # "provider":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method
