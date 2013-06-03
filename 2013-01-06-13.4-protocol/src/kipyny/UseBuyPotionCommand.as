package kipyny
{
[CLASS555]   import guvakipe.Decybuvy;
   import guvakipe.Guc;
   import vinirudel.Wukyva;
   import bikyvym.Voduzak;
   import aaa.ActionMapperAbstract;
   import com.company.assembleegameclient.objects.Player;
   import vinirudel.Zufu;
   import aaa.Parameters;
   import gawulu.Cuqicyh;
   import flash.utils.getTimer;
   import kuzycyw.Vofamoba;


   public class UseBuyPotionCommand extends Object
   {
      public function UseBuyPotionCommand() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mozyc=ActionMapperAbstract.toryfuq;
         super();
         return;
      }

      public var wakutehe:Decybuvy;

      public var fegyli:Guc;

      public var fysufapav:Wukyva;

      public var wop:Voduzak;

      private var mozyc:ActionMapperAbstract;

      private var player:Player;

      private var qufevop:int;

      private var count:int;

      private var qij:Zufu;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.player=this.fysufapav.palaliz.map.player_;
         this.qufevop=this.wakutehe.objectId;
         this.count=this.player.getPotionCount(this.qufevop);
         this.qij=this.fegyli.ciwuta(this.qufevop);
         if(this.count>0||(this.kylajuhij()))
         {
            this.symile();
         }
         else
         {
            this.wop.info("Not safe to purchase potion");
         }
         return;
      }

      private function kylajuhij() : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = this.player.credits_>=this.qij.vuj(this.player.getPotionCount(this.qufevop));
         var _loc2_:Boolean = (Parameters.data_.contextualPotionBuy)||this.wakutehe.source==Decybuvy.wymyn;
         return ((_loc1_)||(this.player.qiguhot(10)))&&(_loc2_);
      }

      private function symile() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.hylapeli())
         {
            this.wop.info("UseBuyPotionCommand.execute: User has MAX of that attribute, not requesting a use/buy from server.");
         }
         else
         {
            this.qutomisa();
            Cuqicyh.play("use_potion");
         }
         return;
      }

      private function hylapeli() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.qufevop==Guc.deg)
         {
            return this.player.qyhefanyk>=this.player.liq;
         }
         if(this.qufevop==Guc.jypaluw)
         {
            return this.player.kyl>=this.player.naduzab;
         }
         return false;
      }

      private function qutomisa() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = Guc.zef(this.wakutehe.objectId);
         this.mozyc.useItem(getTimer(),this.player.objectId_,_loc1_,this.qufevop,this.player.x_,this.player.y_,Vofamoba.gukyhugu);
         if(this.player.getPotionCount(this.wakutehe.objectId)==0)
         {
            this.fegyli.ciwuta(this.wakutehe.objectId).kawop();
         }
         return;
      }
   }
[/CLASS]
}