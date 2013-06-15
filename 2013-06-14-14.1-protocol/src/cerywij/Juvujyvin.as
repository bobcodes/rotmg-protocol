package cerywij
{
   import flash.display.Sprite;
   import copano.Jofedofuq;
   import wenono.Goz;
   import com.company.assembleegameclient.objects.Player;
   import micac.Josuba;


   public class Juvujyvin extends Sprite
   {
      public function Juvujyvin(param1:Player) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wygawahac=new Sprite();
         this.fadiw=new Goz();
         super();
         this.init(param1);
         this.jifajenuj();
         this.lobola();
         return;
      }

      private var wygawahac:Sprite;

      private var vojugihu:Jofedofuq;

      private var fadiw:Goz;

      private function init(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vojugihu=new Jofedofuq(param1,param1,4);
         this.wygawahac.name=Josuba.seqehodol;
         return;
      }

      private function jifajenuj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wygawahac.addChild(this.vojugihu);
         this.wygawahac.addChild(this.fadiw);
         addChild(this.wygawahac);
         return;
      }

      private function lobola() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wygawahac.x=7;
         this.wygawahac.y=7;
         this.fadiw.y=this.vojugihu.height+4;
         return;
      }
   }

}