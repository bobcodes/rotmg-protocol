package qice
{
   import cuwyg.Giri;
   import cuwyg.Dewydo;
   import fom.Hepeg;
   import komawowag.Becepog;
   import aaa.rotmg.action.mapping.RotMGActionMapperAbstract;
   import com.company.assembleegameclient.objects.Player;
   import fom.Cosen;
   import aaa.rotmg.config.UserConfig;
   import vozireni.Pozunubu;
   import flash.utils.getTimer;
   import pirus.Rula;


   public class UseBuyPotionCommand extends Object
   {
      public function UseBuyPotionCommand() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cehode=RotMGActionMapperAbstract.worunyjub;
         super();
         return;
      }

      public var qocuseho:Giri;

      public var wyjicyc:Dewydo;

      public var ruhakony:Hepeg;

      public var qiqely:Becepog;

      private var cehode:RotMGActionMapperAbstract;

      private var player:Player;

      private var qygigede:int;

      private var count:int;

      private var koha:Cosen;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.player=this.ruhakony.qizys.map.player_;
         this.qygigede=this.qocuseho.objectId;
         this.count=this.player.getPotionCount(this.qygigede);
         this.koha=this.wyjicyc.bomokic(this.qygigede);
         if(this.count>0||(this.wakef()))
         {
            this.zojitukav();
         }
         else
         {
            this.qiqely.info("Not safe to purchase potion");
         }
         return;
      }

      private function wakef() : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = this.player.credits_>=this.koha.viv(this.player.getPotionCount(this.qygigede));
         var _loc2_:Boolean = (UserConfig.data_.contextualPotionBuy)||this.qocuseho.source==Giri.gosy;
         return ((_loc1_)||(this.player.hyhyl(10)))&&(_loc2_);
      }

      private function zojitukav() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.potyho())
         {
            this.qiqely.info("UseBuyPotionCommand.execute: User has MAX of that attribute, not requesting a use/buy from server.");
         }
         else
         {
            this.cyrataw();
            Pozunubu.play("use_potion");
         }
         return;
      }

      private function potyho() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.qygigede==Dewydo.mokikeqa)
         {
            return this.player.ryqi>=this.player.ruguj;
         }
         if(this.qygigede==Dewydo.rywihuh)
         {
            return this.player.zamonoca>=this.player.boliqoka;
         }
         return false;
      }

      private function cyrataw() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = Dewydo.fil(this.qocuseho.objectId);
         this.cehode.useItem(getTimer(),this.player.objectId_,_loc1_,this.qygigede,this.player.x_,this.player.y_,Rula.qurynis);
         if(this.player.getPotionCount(this.qocuseho.objectId)==0)
         {
            this.wyjicyc.bomokic(this.qocuseho.objectId).jewaw();
         }
         return;
      }
   }

}