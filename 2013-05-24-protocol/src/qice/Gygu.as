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
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Gygu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
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
         var _loc1_:SavedCharacter = this.model.qamas(this.model.pyt);
         if(_loc1_)
         {
            this.duqa.qoqycofy(_loc1_.getPetVO());
         }
         else
         {
            if((this.model.pyt)&&(this.duqa.rizidakuv())&&!this.data.myto)
            {
               return;
            }
            this.duqa.qoqycofy(null);
         }
         return;
      }

      private function nopyde() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         UserConfig.data_.charIdUseMap[this.data.charId]=new Date().getTime();
         UserConfig.save();
         return;
      }

      private function gilere() : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc1_:Server = (this.data.server)||(this.servers.getBestServer());
         var _loc2_:int = this.data.myto?this.maliz():this.data.juf;
         var _loc3_:Boolean = this.data.susuka;
         var _loc4_:int = this.data.charId;
         var _loc5_:int = this.data.myto?-1:this.data.kyzuwyg;
         var _loc6_:ByteArray = this.data.key;
         this.model.pyt=_loc4_;
         this.zogytuso.dispatch(new GameSprite(_loc1_,_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,this.model,null));
         return;
      }

      private function maliz() : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         if(UserConfig.data_.needsTutorial)
         {
            _loc1_=UserConfig.kesopepi;
         }
         else
         {
            if(UserConfig.data_.needsRandomRealm)
            {
               _loc1_=UserConfig.buryruny;
            }
            else
            {
               _loc1_=UserConfig.bipunomor;
            }
         }
         return _loc1_;
      }
   }

}