package com.company.assembleegameclient.tutorial
{
   import __AS3__.vec.Vector;


   public class Step extends Object
   {
      public function Step(param1:XML) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         this.rajeso=new Vector.<UIDrawBox>();
         this.lozed=new Vector.<UIDrawArrow>();
         this.beqa=new Vector.<Requirement>();
         super();
         for each (_loc2_ in param1.UIDrawBox)
         {
            this.rajeso.push(new UIDrawBox(_loc2_));
         }
         for each (_loc3_ in param1.UIDrawArrow)
         {
            this.lozed.push(new UIDrawArrow(_loc3_));
         }
         for each (_loc4_ in param1.Requirement)
         {
            this.beqa.push(new Requirement(_loc4_));
         }
         return;
      }

      public var text_:String;

      public var action_:String;

      public var rajeso:Vector.<UIDrawBox>;

      public var lozed:Vector.<UIDrawArrow>;

      public var beqa:Vector.<Requirement>;

      public var cosa:int = 0;

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "["+this.text_+"]";
      }
   }

}