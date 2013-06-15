package vuwit
{
   import flash.display.Sprite;
   import racitagy.Wecofete;
   import com.company.assembleegameclient.util.Cokinomu;


   public class Betupa extends Sprite implements Wecofete
   {
      public function Betupa() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.gap=new Cokinomu(this);
         return;
      }

      public var gap:Cokinomu;

      protected function kyri() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.x=(this.gap.kikasybah()-this.width)*0.5;
         this.y=(this.gap.tomiqu()-this.height)*0.5;
         return;
      }
   }

}