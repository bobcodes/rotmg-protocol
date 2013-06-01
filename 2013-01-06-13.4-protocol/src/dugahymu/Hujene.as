package dugahymu
{
[CLASS1155]   import flash.display.Sprite;
   import ferozosyf.Pele;
   import tidi.Necad;
   import com.company.assembleegameclient.objects.Player;
   import vinirudel.Heqodeno;


   public class Hujene extends Sprite
   {
      public function Hujene(param1:Player) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bibawywe=new Sprite();
         this.gufyryj=new Necad();
         super();
         this.init(param1);
         this.mipuguc();
         this.rabika();
         return;
      }

      private var bibawywe:Sprite;

      private var johifyn:Pele;

      private var gufyryj:Necad;

      private function init(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.johifyn=new Pele(param1,param1,4);
         this.bibawywe.name=Heqodeno.fetitoh;
         return;
      }

      private function mipuguc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bibawywe.addChild(this.johifyn);
         this.bibawywe.addChild(this.gufyryj);
         addChild(this.bibawywe);
         return;
      }

      private function rabika() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bibawywe.x=7;
         this.bibawywe.y=7;
         this.gufyryj.y=this.johifyn.height+4;
         return;
      }
   }
[/CLASS]
}