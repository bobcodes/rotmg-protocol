package mavew
{
   import hivysif.Guzowoja;
   import flash.text.TextFieldAutoSize;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;
   import jediwip.Tunyhazo;


   public class Qyrola extends Qyryl
   {
      public function Qyrola(param1:uint, param2:uint, param3:String, param4:String, param5:int, param6:Object=null) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         super(param1,1,param2,1);
         if(param3!=null)
         {
            this.tob=new Guzowoja().setSize(20).setColor(16777215);
            this.ruw(this.tob,param5,param3);
         }
         if(param4!=null)
         {
            this.lohico=new Guzowoja().setSize(14).setColor(11776947);
            this.ruw(this.lohico,param5,param4,param6);
         }
         return;
      }

      public var tob:Guzowoja;

      public var lohico:Guzowoja;

      override protected function alignUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lohico.y=this.tob?this.tob.height+8:0;
         return;
      }

      public function ruw(param1:Guzowoja, param2:int, param3:String, param4:Object=null) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         param1.setAutoSize(TextFieldAutoSize.LEFT);
         param1.setWordWrap(true).setTextWidth(param2);
         param1.setStringBuilder(new Kybidu().setParams(param3,param4));
         param1.filters=[new DropShadowFilter(0,0,0)];
         ryfoc.push(param1.textChanged);
         addChild(param1);
         return;
      }

      public function setTitle(param1:Tunyhazo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tob.setStringBuilder(param1);
         draw();
         return;
      }

      public function kenadyb(param1:Tunyhazo) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lohico.setStringBuilder(param1);
         draw();
         return;
      }
   }

}