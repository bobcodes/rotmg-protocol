package sozyzajaw
{
   import wahyqise.Bedac;
   import wahyqise.Tysyc;
   import micac.Ciqyl;
   import hunavefeg.Depyrew;
   import aaa.ActionMapperAbstract;
   import com.company.assembleegameclient.objects.Player;
   import micac.Cake;
   import aaa.RotmgParameters.RotmgParameters;
   import dorepoji.Kadido;
   import flash.utils.getTimer;
   import pilage.Vysu;


   public class UseBuyPotionCommand extends Object
   {
      public function UseBuyPotionCommand() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wuvetaz=ActionMapperAbstract.wisunoc;
         super();
         return;
      }

      public var tutobasu:Bedac;

      public var jybowygyf:Tysyc;

      public var fer:Ciqyl;

      public var con:Depyrew;

      private var wuvetaz:ActionMapperAbstract;

      private var player:Player;

      private var fipy:int;

      private var count:int;

      private var jozicez:Cake;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.player=this.fer.qyhowo.map.player_;
         this.fipy=this.tutobasu.objectId;
         this.count=this.player.getPotionCount(this.fipy);
         this.jozicez=this.jybowygyf.hotyzycyc(this.fipy);
         if(this.count>0||(this.gibynecoj()))
         {
            this.mitora();
         }
         else
         {
            this.con.info("Not safe to purchase potion");
         }
         return;
      }

      private function gibynecoj() : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = this.player.credits_>=this.jozicez.nimosuzod(this.player.getPotionCount(this.fipy));
         var _loc2_:Boolean = (RotmgParameters.data_.contextualPotionBuy)||this.tutobasu.source==Bedac.kabu;
         return ((_loc1_)||(this.player.wulic(10)))&&(_loc2_);
      }

      private function mitora() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.hupim())
         {
            this.con.info("UseBuyPotionCommand.execute: User has MAX of that attribute, not requesting a use/buy from server.");
         }
         else
         {
            this.puhivu();
            Kadido.play("use_potion");
         }
         return;
      }

      private function hupim() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.fipy==Tysyc.sanan)
         {
            return this.player.vypo>=this.player.kukigim;
         }
         if(this.fipy==Tysyc.lenem)
         {
            return this.player.nydyry>=this.player.nivuj;
         }
         return false;
      }

      private function puhivu() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = Tysyc.nyh(this.tutobasu.objectId);
         this.wuvetaz.useItem(getTimer(),this.player.objectId_,_loc1_,this.fipy,this.player.x_,this.player.y_,Vysu.jeselewyw);
         if(this.player.getPotionCount(this.tutobasu.objectId)==0)
         {
            this.jybowygyf.hotyzycyc(this.tutobasu.objectId).gisu();
         }
         return;
      }
   }

}