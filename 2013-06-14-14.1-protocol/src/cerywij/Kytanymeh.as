package cerywij
{
   import flash.display.Sprite;
   import copano.Jofedofuq;
   import wenono.Goz;
   import com.company.assembleegameclient.objects.Player;
   import micac.Josuba;
   import pilage.Patale;


   public class Kytanymeh extends Sprite
   {
      public function Kytanymeh(param1:Player) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.haqy=new Sprite();
         this.matuwic=new Goz();
         super();
         this.init(param1);
         this.jifajenuj();
         this.lobola();
         return;
      }

      private var haqy:Sprite;

      private var dibuhyfe:Jofedofuq;

      private var matuwic:Goz;

      private function init(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.haqy.name=Josuba.hicajy;
         this.dibuhyfe=new Jofedofuq(param1,param1,Patale.hunyrigy+Patale.wiwydu,true);
         return;
      }

      private function lobola() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.haqy.x=7;
         this.haqy.y=7;
         this.matuwic.y=this.dibuhyfe.height+4;
         return;
      }

      private function jifajenuj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.haqy.addChild(this.dibuhyfe);
         this.haqy.addChild(this.matuwic);
         addChild(this.haqy);
         return;
      }
   }

}