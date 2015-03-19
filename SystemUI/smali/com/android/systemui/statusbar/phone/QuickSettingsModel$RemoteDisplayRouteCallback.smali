.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteDisplayRouteCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "route"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 208
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "route"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 212
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "route"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 216
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "type"
    .parameter "route"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 220
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .parameter "router"
    .parameter "type"
    .parameter "route"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RemoteDisplayRouteCallback;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->updateRemoteDisplays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    .line 224
    return-void
.end method
