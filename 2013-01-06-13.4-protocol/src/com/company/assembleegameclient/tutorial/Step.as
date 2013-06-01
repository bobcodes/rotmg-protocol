package com.company.assembleegameclient.tutorial
{
[CLASS1417]   import __AS3__.vec.Vector;


   public class Step extends Object
   {
      public function Step(param1:XML) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:XML = null;
         this.vypa=new Vector.<UIDrawBox>();
         this.byzyto=new Vector.<UIDrawArrow>();
         this.wesifaki=new Vector.<Requirement>();
         super();
         for each (_loc2_ in param1.UIDrawBox)
         {
            this.vypa.push(new UIDrawBox(_loc2_));
         }
         for each (_loc3_ in param1.UIDrawArrow)
         {
            this.byzyto.push(new UIDrawArrow(_loc3_));
         }
         for each (_loc4_ in param1.Requirement)
         {
            this.wesifaki.push(new Requirement(_loc4_));
         }
         return;
      }

      public var text_:String;

      public var action_:String;

      public var vypa:Vector.<UIDrawBox>;

      public var byzyto:Vector.<UIDrawArrow>;

      public var wesifaki:Vector.<Requirement>;

      public var zimaveqy:int = 0;

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "["+this.text_+"]";
      }
   }
[/CLASS]
}