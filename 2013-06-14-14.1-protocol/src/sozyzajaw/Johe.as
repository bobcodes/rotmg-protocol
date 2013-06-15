package sozyzajaw
{
   import pomujukir.Bemivu;
   import wahyqise.Gecekat;
   import lemugo.Wokycuku;
   import fanij.Namejaja;
   import jovurora.Divoceve;
   import vilova.Cetugev;
   import gycu.Feliro;
   import dovuz.Zonev;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import com.company.assembleegameclient.parameters.Parameters;
   import jovurora.Server;
   import flash.utils.ByteArray;
   import com.company.assembleegameclient.game.GameSprite;


   public class Johe extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Johe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const bupokovyz:int = 2000;

      public var syfu:Bemivu;

      public var data:Gecekat;

      public var model:Wokycuku;

      public var cybeco:Namejaja;

      public var servers:Divoceve;

      public var zop:Cetugev;

      public var bilizaw:Feliro;

      public var polejihu:Zonev;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.data.jecoryt)
         {
            this.polejihu.cisud=Johe.bupokovyz;
         }
         this.pukyp();
         this.pimyne();
         this.vybudyh();
         return;
      }

      private function vybudyh() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:SavedCharacter = this.model.gohiqu(this.model.lobuwyjer);
         if(_loc1_)
         {
            this.cybeco.duqugyc(_loc1_.getPetVO());
         }
         else
         {
            if((this.model.lobuwyjer)&&(this.cybeco.tigosulo())&&!this.data.jecoryt)
            {
               return;
            }
            this.cybeco.duqugyc(null);
         }
         return;
      }

      private function pukyp() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         Parameters.data_.charIdUseMap[this.data.charId]=new Date().getTime();
         Parameters.save();
         return;
      }

      private function pimyne() : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc1_:Server = (this.data.server)||(this.servers.netil());
         var _loc2_:int = this.data.jecoryt?this.mydagi():this.data.nipiz;
         var _loc3_:Boolean = this.data.tumap;
         var _loc4_:int = this.data.charId;
         var _loc5_:int = this.data.jecoryt?-1:this.data.zad;
         var _loc6_:ByteArray = this.data.key;
         this.model.lobuwyjer=_loc4_;
         this.syfu.dispatch(new GameSprite(_loc1_,_loc2_,_loc3_,_loc4_,_loc5_,_loc6_,this.model,null,this.data.wyca));
         return;
      }

      private function mydagi() : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         if(Parameters.data_.needsTutorial)
         {
            _loc1_=Parameters.wajujy;
         }
         else
         {
            if(Parameters.data_.needsRandomRealm)
            {
               _loc1_=Parameters.feli;
            }
            else
            {
               _loc1_=Parameters.myjedib;
            }
         }
         return _loc1_;
      }
   }

}