package dugahymu
{
[CLASS1153]   import flash.display.Sprite;
   import ferozosyf.Pele;
   import tidi.Necad;
   import com.company.assembleegameclient.objects.Player;
   import vinirudel.Heqodeno;
   import kuzycyw.Cymydef;


   public class Jurewu extends Sprite
   {
      public function Jurewu(param1:Player) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sufosisud=new Sprite();
         this.ceke=new Necad();
         super();
         this.init(param1);
         this.mipuguc();
         this.rabika();
         return;
      }

      private var sufosisud:Sprite;

      private var kevokol:Pele;

      private var ceke:Necad;

      private function init(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sufosisud.name=Heqodeno.lazyp;
         this.kevokol=new Pele(param1,param1,Cymydef.nybe+Cymydef.sasusa,true);
         return;
      }

      private function rabika() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sufosisud.x=7;
         this.sufosisud.y=7;
         this.ceke.y=this.kevokol.height+4;
         return;
      }

      private function mipuguc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sufosisud.addChild(this.kevokol);
         this.sufosisud.addChild(this.ceke);
         addChild(this.sufosisud);
         return;
      }
   }
[/CLASS]
}