package kipyny
{
[CLASS547]   import dutes.Sycanetal;
   import guvakipe.Nedasefyg;
   import dylaqezo.Vusun;
   import qypupet.Tuhyfutos;
   import wyjimigo.Tykum;
   import vofepimy.Wylot;
   import syfuqycy.Totitig;
   import lafol.Becadoduq;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import aaa.Parameters;
   import wyjimigo.Server;
   import flash.utils.ByteArray;
   import com.company.assembleegameclient.game.GameSprite;


   public class Birem extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Birem() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const gyzoka:int = 2000;

      public var cucec:Sycanetal;

      public var data:Nedasefyg;

      public var model:Vusun;

      public var lycufasoc:Tuhyfutos;

      public var servers:Tykum;

      public var pitegum:Wylot;

      public var peg:Totitig;

      public var nyqyv:Becadoduq;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.data.zyhafovyd)
         {
            this.nyqyv.mumyp=Birem.gyzoka;
         }
         this.bihyd();
         this.zin();
         this.mykuwynok();
         return;
      }

      private function mykuwynok() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:SavedCharacter = this.model.syci(this.model.zud);
         if(_loc1_)
         {
            this.lycufasoc.wuq(_loc1_.getPetVO());
         }
         else
         {
            if((this.model.zud)&&(this.lycufasoc.kodu())&&!this.data.zyhafovyd)
            {
               return;
            }
            this.lycufasoc.wuq(null);
         }
         return;
      }

      private function bihyd() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         Parameters.data_.charIdUseMap[this.data.charId]=new Date().getTime();
         Parameters.save();
         return;
      }

      private function zin() : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc1_:Server = (this.data.server)||(this.servers.dizanicac());
         var _loc2_:int = this.data.zyhafovyd?this.vajoka():this.data.vanu;
         var _loc3_:Boolean = this.data.buny;
         var _loc4_:int = this.data.charId;
         var _loc5_:int = this.data.zyhafovyd?-1:this.data.sufosyz;
         var _loc6_:ByteArray = this.data.key;
         this.model.zud=_loc4_;
         this.cucec.dispatch(new GameSprite(_loc1_,_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,this.model,null));
         return;
      }

      private function vajoka() : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         if(Parameters.data_.needsTutorial)
         {
            _loc1_=Parameters.telore;
         }
         else
         {
            if(Parameters.data_.needsRandomRealm)
            {
               _loc1_=Parameters.foloq;
            }
            else
            {
               _loc1_=Parameters.jec;
            }
         }
         return _loc1_;
      }
   }
[/CLASS]
}