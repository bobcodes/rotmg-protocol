package nafa
{
   import povopito.Ryduwi;
   import com.company.ui.Sytubyvyg;
   import flash.filters.DropShadowFilter;


   public class Leduzem extends Ryduwi
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Leduzem(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(3552822,1,10197915,1,true);
         this.pevyh=new Sytubyvyg(16,16777215,false,cupuzini-4,0);
         this.pevyh.setBold(true);
         this.pevyh.wordWrap=true;
         this.pevyh.text=String(param1.@id);
         this.pevyh.cijoka();
         this.pevyh.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         this.pevyh.x=0;
         this.pevyh.y=0;
         addChild(this.pevyh);
         return;
      }

      private static const cupuzini:int = 180;

      private var pevyh:Sytubyvyg;
   }

}