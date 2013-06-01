package dec
{
[CLASS1888]   import pigeguwo.Jazyv;
   import com.company.ui.Remyl;
   import flash.filters.DropShadowFilter;


   public class Litu extends Jazyv
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Litu(param1:XML) {
         var _loc3_:* = true;
         var _loc4_:* = false;
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
         var _loc2_:* = "";
         if(param1.hasOwnProperty("Speed"))
         {
            _loc2_=_loc2_+("Speed: "+Number(param1.Speed).toFixed(2)+"\n");
         }
         else
         {
            _loc2_=_loc2_+"Speed: 1.00\n";
         }
         if(param1.hasOwnProperty("NoWalk"))
         {
            _loc2_=_loc2_+"Unwalkable\n";
         }
         if(param1.hasOwnProperty("Push"))
         {
            _loc2_=_loc2_+"Push\n";
         }
         if(param1.hasOwnProperty("Sink"))
         {
            _loc2_=_loc2_+"Sink\n";
         }
         if(param1.hasOwnProperty("Sinking"))
         {
            _loc2_=_loc2_+"Sinking\n";
         }
         if(param1.hasOwnProperty("Animate"))
         {
            _loc2_=_loc2_+"Animated\n";
         }
         if(param1.hasOwnProperty("RandomOffset"))
         {
            _loc2_=_loc2_+"Randomized\n";
         }
         this.rarac=new Remyl(14,11776947,false,dolu,0);
         this.rarac.wordWrap=true;
         this.rarac.text=String(_loc2_);
         this.rarac.qovy();
         this.rarac.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         this.rarac.x=0;
         this.rarac.y=this.danypifev.height+2;
         addChild(this.rarac);
         return;
      }

      private static const dolu:int = 180;

      private var danypifev:Remyl;

      private var rarac:Remyl;
   }
[/CLASS]
}