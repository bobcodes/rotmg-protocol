package dec
{
[CLASS1886]   import pigeguwo.Jazyv;
   import com.company.ui.Remyl;
   import flash.filters.DropShadowFilter;


   public class Boqopiwyv extends Jazyv
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Boqopiwyv(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(3552822,1,10197915,1,true);
         this.danypifev=new Remyl(16,16777215,false,dolu-4,0);
         this.danypifev.setBold(true);
         this.danypifev.wordWrap=true;
         this.danypifev.text=String(param1.@id);
         this.danypifev.qovy();
         this.danypifev.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         this.danypifev.x=0;
         this.danypifev.y=0;
         addChild(this.danypifev);
         return;
      }

      private static const dolu:int = 180;

      private var danypifev:Remyl;
   }
[/CLASS]
}