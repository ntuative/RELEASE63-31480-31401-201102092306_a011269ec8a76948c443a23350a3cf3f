package com.sulake.habbo.widget
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.chatinput.RoomChatInputWidget;
   import com.sulake.habbo.widget.chooser.FurniChooserWidget;
   import com.sulake.habbo.widget.chooser.UserChooserWidget;
   import com.sulake.habbo.widget.doorbell.DoorbellWidget;
   import com.sulake.habbo.widget.friendrequest.FriendRequestWidget;
   import com.sulake.habbo.widget.furniture.clothingchange.ClothingChangeFurnitureWidget;
   import com.sulake.habbo.widget.furniture.credit.CreditFurniWidget;
   import com.sulake.habbo.widget.furniture.dimmer.DimmerFurniWidget;
   import com.sulake.habbo.widget.furniture.ecotronbox.EcotronBoxFurniWidget;
   import com.sulake.habbo.widget.furniture.petpackage.PetPackageFurniWidget;
   import com.sulake.habbo.widget.furniture.placeholder.PlaceholderWidget;
   import com.sulake.habbo.widget.furniture.present.PresentFurniWidget;
   import com.sulake.habbo.widget.furniture.stickie.StickieFurniWidget;
   import com.sulake.habbo.widget.furniture.teaser.TeaserFurniWidget;
   import com.sulake.habbo.widget.furniture.trophy.TrophyFurniWidget;
   import com.sulake.habbo.widget.infostand.InfostandWidget;
   import com.sulake.habbo.widget.loadingbar.LoadingBarWidget;
   import com.sulake.habbo.widget.memenu.MeMenuWidget;
   import com.sulake.habbo.widget.notification.UserNotificationWidget;
   import com.sulake.habbo.widget.poll.PollWidget;
   import com.sulake.habbo.widget.poll.VoteWidget;
   import com.sulake.habbo.widget.purse.PurseWidget;
   import com.sulake.habbo.widget.roomchat.RoomChatWidget;
   import com.sulake.habbo.widget.roomqueue.RoomQueueWidget;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCatalog;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import iid.IIDHabboWindowManager;
   
   public class RoomWidgetFactory extends Component implements IRoomWidgetFactory
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_2766:IAssetLibrary;
      
      private var _localizations:IHabboLocalizationManager;
      
      private var var_150:IHabboConfigurationManager;
      
      private var _catalog:IHabboCatalog;
      
      private var var_2571:int = 0;
      
      public function RoomWidgetFactory(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         super(param1,param2,param3);
         this.var_2766 = param1.root.assets;
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationReady);
         queueInterface(new IIDHabboConfigurationManager(),this.onHabboConfigurationReady);
         queueInterface(new IIDHabboCatalog(),this.onCatalogReady);
      }
      
      override public function dispose() : void
      {
         if(this._windowManager)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this._localizations)
         {
            this._localizations.release(new IIDHabboLocalizationManager());
            this._localizations = null;
         }
         if(this.var_150)
         {
            this.var_150.release(new IIDHabboConfigurationManager());
            this.var_150 = null;
         }
         if(this._catalog)
         {
            this._catalog.release(new IIDHabboCatalog());
            this._catalog = null;
         }
         super.dispose();
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._windowManager = param2 as IHabboWindowManager;
      }
      
      private function onLocalizationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this._localizations = param2 as IHabboLocalizationManager;
      }
      
      private function onHabboConfigurationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_150 = param2 as IHabboConfigurationManager;
      }
      
      private function onCatalogReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._catalog = param2 as IHabboCatalog;
      }
      
      public function createWidget(param1:String) : IRoomWidget
      {
         var _loc2_:* = null;
         if(this._windowManager == null)
         {
            return null;
         }
         switch(param1)
         {
            case RoomWidgetEnum.const_385:
               _loc2_ = new RoomChatWidget(this._windowManager,assets,this._localizations,this.var_150,this.var_2571++,this);
               break;
            case RoomWidgetEnum.CHAT_INPUT_WIDGET:
               _loc2_ = new RoomChatInputWidget(this._windowManager,assets,this._localizations,this);
               break;
            case RoomWidgetEnum.const_554:
               _loc2_ = new InfostandWidget(this._windowManager,assets,this._localizations,this.var_150,this._catalog);
               break;
            case RoomWidgetEnum.const_514:
               _loc2_ = new MeMenuWidget(this._windowManager,assets,this._localizations,events,this.var_150);
               break;
            case RoomWidgetEnum.const_803:
               _loc2_ = new PlaceholderWidget(this._windowManager,assets,this._localizations);
               break;
            case RoomWidgetEnum.const_536:
               _loc2_ = new CreditFurniWidget(this._windowManager,assets,this._localizations);
               break;
            case RoomWidgetEnum.const_467:
               _loc2_ = new StickieFurniWidget(this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_565:
               _loc2_ = new PresentFurniWidget(this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_521:
               _loc2_ = new TrophyFurniWidget(this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_557:
               _loc2_ = new TeaserFurniWidget(this._windowManager,assets,this._localizations,this.var_150);
               break;
            case RoomWidgetEnum.const_428:
               _loc2_ = new EcotronBoxFurniWidget(this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_419:
               _loc2_ = new PetPackageFurniWidget(this._windowManager,assets);
               break;
            case RoomWidgetEnum.const_111:
               _loc2_ = new DoorbellWidget(this._windowManager,assets,this._localizations);
               break;
            case RoomWidgetEnum.const_490:
               _loc2_ = new LoadingBarWidget(this._windowManager,assets,this._localizations,this.var_150);
               break;
            case RoomWidgetEnum.const_667:
               _loc2_ = new RoomQueueWidget(this._windowManager,assets,this._localizations,this.var_150);
               break;
            case RoomWidgetEnum.const_116:
               _loc2_ = new VoteWidget(this._windowManager,assets,this._localizations,this.var_150);
               break;
            case RoomWidgetEnum.const_387:
               _loc2_ = new PollWidget(this._windowManager,assets,this._localizations);
               break;
            case RoomWidgetEnum.const_284:
               _loc2_ = new UserChooserWidget(this._windowManager,assets,this._localizations);
               break;
            case RoomWidgetEnum.const_516:
               _loc2_ = new FurniChooserWidget(this._windowManager,assets,this._localizations);
               break;
            case RoomWidgetEnum.const_470:
               _loc2_ = new DimmerFurniWidget(this._windowManager,assets,this._localizations);
               break;
            case RoomWidgetEnum.const_138:
               _loc2_ = new FriendRequestWidget(this._windowManager,assets,this._localizations,this);
               break;
            case RoomWidgetEnum.const_451:
               _loc2_ = new ClothingChangeFurnitureWidget(this._windowManager,assets,this._localizations);
               break;
            case RoomWidgetEnum.const_766:
               _loc2_ = new RoomWidgetBase(this._windowManager);
               break;
            case RoomWidgetEnum.const_112:
               _loc2_ = new UserNotificationWidget(this._windowManager,assets,this._localizations);
               break;
            case RoomWidgetEnum.const_375:
               _loc2_ = new PurseWidget(this._windowManager,assets,this._localizations);
         }
         return _loc2_;
      }
   }
}
