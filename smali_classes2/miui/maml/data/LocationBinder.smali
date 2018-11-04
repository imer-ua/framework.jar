.class public Lmiui/maml/data/LocationBinder;
.super Lmiui/maml/data/VariableBinder;
.source "LocationBinder.java"


# static fields
.field private static final DEFAULT_MIN_DISTANCE:F = 10.0f

.field private static final DEFAULT_MIN_TIME:J = 0x7530L

.field private static final DEFAULT_PROVIDER_TYPE:I = 0x0

.field private static final GPS:I = 0x2

.field private static final NETWORK:I = 0x1

.field public static final TAG_NAME:Ljava/lang/String; = "LocationBinder"

.field private static sLocationManager:Landroid/location/LocationManager;


# instance fields
.field private mEnable:Z

.field private mEnableExp:Lmiui/maml/data/Expression;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationProvider:Ljava/lang/String;

.field private mMinDistance:F

.field private mMinTime:J

.field private mProviderType:I

.field private mRegistered:Z


# direct methods
.method static synthetic -wrap0(Lmiui/maml/data/LocationBinder;Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/LocationBinder;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 32
    iput-object v4, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    .line 50
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiui/maml/data/LocationBinder;->mProviderType:I

    .line 51
    const-string/jumbo v1, "time"

    const-wide/16 v2, 0x7530

    invoke-static {p1, v1, v2, v3}, Lmiui/maml/util/Utils;->getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/data/LocationBinder;->mMinTime:J

    .line 52
    const-string/jumbo v1, "distance"

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {p1, v1, v2}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lmiui/maml/data/LocationBinder;->mMinDistance:F

    .line 53
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v2, "enable"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/data/LocationBinder;->mEnableExp:Lmiui/maml/data/Expression;

    .line 54
    invoke-virtual {p0, p1}, Lmiui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 56
    sget-object v1, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    sput-object v1, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    .line 59
    :cond_0
    sget-object v1, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 62
    invoke-direct {p0, v4}, Lmiui/maml/data/LocationBinder;->updateLocation(Landroid/location/Location;)V

    .line 63
    return-void

    .line 66
    :cond_1
    iget v1, p0, Lmiui/maml/data/LocationBinder;->mProviderType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 67
    const-string/jumbo v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    const-string/jumbo v1, "gps"

    iput-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    .line 82
    :cond_2
    :goto_0
    iget-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 83
    invoke-direct {p0, v4}, Lmiui/maml/data/LocationBinder;->updateLocation(Landroid/location/Location;)V

    .line 84
    return-void

    .line 70
    :cond_3
    iget v1, p0, Lmiui/maml/data/LocationBinder;->mProviderType:I

    if-ne v1, v5, :cond_4

    .line 71
    const-string/jumbo v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    const-string/jumbo v1, "network"

    iput-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_4
    const-string/jumbo v1, "network"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 76
    const-string/jumbo v1, "network"

    iput-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_5
    const-string/jumbo v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    const-string/jumbo v1, "gps"

    iput-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_6
    new-instance v1, Lmiui/maml/data/LocationBinder$1;

    invoke-direct {v1, p0}, Lmiui/maml/data/LocationBinder$1;-><init>(Lmiui/maml/data/LocationBinder;)V

    iput-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationListener:Landroid/location/LocationListener;

    .line 107
    sget-object v1, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/maml/data/LocationBinder;->updateLocation(Landroid/location/Location;)V

    .line 48
    return-void
.end method

.method private registerListener()V
    .locals 6

    .prologue
    .line 156
    iget-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mRegistered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 157
    :cond_0
    return-void

    .line 159
    :cond_1
    sget-object v0, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationProvider:Ljava/lang/String;

    iget-wide v2, p0, Lmiui/maml/data/LocationBinder;->mMinTime:J

    iget v4, p0, Lmiui/maml/data/LocationBinder;->mMinDistance:F

    iget-object v5, p0, Lmiui/maml/data/LocationBinder;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mRegistered:Z

    .line 155
    return-void
.end method

.method private unregisterListener()V
    .locals 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mRegistered:Z

    if-nez v0, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    sget-object v0, Lmiui/maml/data/LocationBinder;->sLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lmiui/maml/data/LocationBinder;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mRegistered:Z

    .line 163
    return-void
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "result":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 113
    const/4 v4, 0x7

    new-array v0, v4, [Ljava/lang/String;

    .line 114
    .local v0, "result":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    .line 115
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    .line 116
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    .line 117
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    .line 118
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v0, v5

    .line 119
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v0, v5

    .line 120
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v0, v5

    .line 123
    .end local v0    # "result":[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lmiui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "v$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/data/VariableBinder$Variable;

    .line 124
    .local v1, "v":Lmiui/maml/data/VariableBinder$Variable;
    move-object v3, v1

    .line 125
    .local v3, "var":Lmiui/maml/data/VariableBinder$Variable;
    invoke-virtual {v1, v0}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 127
    .end local v1    # "v":Lmiui/maml/data/VariableBinder$Variable;
    .end local v3    # "var":Lmiui/maml/data/VariableBinder$Variable;
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->onUpdateComplete()V

    .line 110
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lmiui/maml/data/LocationBinder;->unregisterListener()V

    .line 140
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    .line 138
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 132
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    .line 133
    iget-object v1, p0, Lmiui/maml/data/LocationBinder;->mEnableExp:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/data/LocationBinder;->mEnableExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lmiui/maml/data/LocationBinder;->mEnable:Z

    .line 134
    invoke-direct {p0}, Lmiui/maml/data/LocationBinder;->registerListener()V

    .line 131
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 173
    new-instance v0, Lmiui/maml/data/VariableBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    .line 146
    invoke-direct {p0}, Lmiui/maml/data/LocationBinder;->unregisterListener()V

    .line 144
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    .line 152
    invoke-direct {p0}, Lmiui/maml/data/LocationBinder;->registerListener()V

    .line 150
    return-void
.end method
