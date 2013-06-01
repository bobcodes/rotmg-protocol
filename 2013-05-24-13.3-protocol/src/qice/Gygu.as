package qice
{
   import raqu.Calogu;
   import cuwyg.Tibeto;
   import hotewa.Baqifa;
   import zoroc.Gecezyw;
   import aaa.rotmg.ui.ServersContainer;
   import dopumitud.Wib;
   import gag.Gawu;
   import rucag.Qyvasiz;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import aaa.rotmg.config.UserConfig;
   import aaa.rotmg.net.Server;
   import flash.utils.ByteArray;
   import com.company.assembleegameclient.game.GameSprite;


   public class Gygu extends Object
   {
      public function Gygu() {
         super();
         return;
      }

      public static const fyzuja:int = 2000;

      public var zogytuso:Calogu;

      public var data:Tibeto;

      public var model:Baqifa;

      public var duqa:Gecezyw;

      public var servers:ServersContainer;

      public var zoritu:Wib;

      public var rurusedi:Gawu;

      public var kod:Qyvasiz;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.data.myto)
         {
            this.kod.cikyzyba=Gygu.fyzuja;
         }
         this.nopyde();
         this.gilere();
         this.qemi();
         return;
      }

      private function qemi() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:SavedCharacter = this.model.qamas(this.model.charId);
         if(_loc1_)
         {
            this.duqa.qoqycofy(_loc1_.getPetVO());
         }
         else
         {
            if((this.model.charId)&&(this.duqa.rizidakuv())&&!this.data.myto)
            {
               return;
            }
            this.duqa.qoqycofy(null);
         }
         return;
      }

      private function nopyde() : void {
         UserConfig.data_.charIdUseMap[this.data.charId]=new Date().getTime();
         UserConfig.save();
         return;
      }

      private function gilere() : void {
         var server:Server = (this.data.server)||(this.servers.getBestServer());
         var whereToSendPlayer:int = this.data.myto?this.getWhereToSendPlayer():this.data.whereToSendPlayer;
         var needsToCreateNewChar:Boolean = this.data.needsToCreateNewChar;
         var charId:int = this.data.charId;
         var keyTime:int = this.data.myto?-1:this.data.keyTime;
         var key:ByteArray = this.data.key;
         this.model.charId=charId;
         this.zogytuso.dispatch(new GameSprite(server,whereToSendPlayer,needsToCreateNewChar,charId,keyTime,key,this.model,null));
         return;
      }

      private function getWhereToSendPlayer() : int {
         var _loc1_:* = 0;
         if(UserConfig.data_.needsTutorial)
         {
            _loc1_=UserConfig.SEND_TO_TUTORIAL;
         }
         else
         {
            if(UserConfig.data_.needsRandomRealm)
            {
               _loc1_=UserConfig.SEND_TO_RANDOM_REALM;
            }
            else
            {
               _loc1_=UserConfig.SEND_TO_NEXUS;
            }
         }
         return _loc1_;
      }
   }

}