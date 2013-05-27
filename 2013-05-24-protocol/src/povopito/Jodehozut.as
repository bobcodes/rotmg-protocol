package povopito
{
   import movimet.Lufub;
   import flash.text.TextFieldAutoSize;
   import nec.Sire;
   import flash.filters.DropShadowFilter;
   import nec.Zirewe;


   public class Jodehozut extends Ryduwi
   {
      public function Jodehozut(param1:uint, param2:uint, param3:String, param4:String, param5:int, param6:Object=null) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         super(param1,1,param2,1);
         if(param3!=null)
         {
            this.pevyh=new Lufub().setSize(20).setColor(16777215);
            this.qohina(this.pevyh,param5,param3);
         }
         if(param4!=null)
         {
            this.lineza=new Lufub().setSize(14).setColor(11776947);
            this.qohina(this.lineza,param5,param4,param6);
         }
         return;
      }

      public var pevyh:Lufub;

      public var lineza:Lufub;

      override protected function alignUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lineza.y=this.pevyh?this.pevyh.height+8:0;
         return;
      }

      public function qohina(param1:Lufub, param2:int, param3:String, param4:Object=null) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         param1.setAutoSize(TextFieldAutoSize.LEFT);
         param1.setWordWrap(true).setTextWidth(param2);
         param1.setStringBuilder(new Sire().setParams(param3,param4));
         param1.filters=[new DropShadowFilter(0,0,0)];
         jiguvovu.push(param1.textChanged);
         addChild(param1);
         return;
      }

      public function setTitle(param1:Zirewe) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pevyh.setStringBuilder(param1);
         draw();
         return;
      }

      public function sonydiw(param1:Zirewe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lineza.setStringBuilder(param1);
         draw();
         return;
      }
   }

}