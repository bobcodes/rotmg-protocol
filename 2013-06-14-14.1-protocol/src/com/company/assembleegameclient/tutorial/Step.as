package com.company.assembleegameclient.tutorial
{
   import __AS3__.vec.Vector;


   public class Step extends Object
   {
      public function Step(param1:XML) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         this.vajudob=new Vector.<UIDrawBox>();
         this.docebe=new Vector.<UIDrawArrow>();
         this.himonad=new Vector.<Requirement>();
         super();
         for each (_loc2_ in param1.UIDrawBox)
         {
            this.vajudob.push(new UIDrawBox(_loc2_));
         }
         for each (_loc3_ in param1.UIDrawArrow)
         {
            this.docebe.push(new UIDrawArrow(_loc3_));
         }
         for each (_loc4_ in param1.Requirement)
         {
            this.himonad.push(new Requirement(_loc4_));
         }
         return;
      }

      public var text_:String;

      public var action_:String;

      public var vajudob:Vector.<UIDrawBox>;

      public var docebe:Vector.<UIDrawArrow>;

      public var himonad:Vector.<Requirement>;

      public var zibe:int = 0;

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "["+this.text_+"]";
      }
   }

}