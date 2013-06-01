package com.company.assembleegameclient.tutorial
{
[CLASS1418]   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Requirement extends Object
   {
      public function Requirement(param1:XML) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.type_=String(param1);
         var _loc2_:String = String(param1.@objectId);
         if(!(_loc2_==null)&&!(_loc2_==""))
         {
            this.objectType_=ObjectLibrary.ronifyva[_loc2_];
         }
         this.jot=String(param1.@objectName).replace("tutorial_script","tutorial");
         if(this.jot==null)
         {
            this.jot="";
         }
         this.basyfugud=int(param1.@slot);
         this.radius_=Number(param1.@radius);
         return;
      }

      public var type_:String;

      public var basyfugud:int = -1;

      public var objectType_:int = -1;

      public var jot:String = "";

      public var radius_:Number = 1;
   }
[/CLASS]
}