package avmplus
{
   public class DescribeTypeJSON extends Object
   {
      public function DescribeTypeJSON() {
         super();
         return;
      }

      public static var available:Boolean = !(describeTypeJSON==null);

      public static const INSTANCE_FLAGS:uint = INCLUDE_BASES|INCLUDE_INTERFACES|INCLUDE_VARIABLES|INCLUDE_ACCESSORS|INCLUDE_METHODS|INCLUDE_METADATA|INCLUDE_CONSTRUCTOR|INCLUDE_TRAITS|USE_ITRAITS|HIDE_OBJECT;

      public static const CLASS_FLAGS:uint = INCLUDE_INTERFACES|INCLUDE_VARIABLES|INCLUDE_ACCESSORS|INCLUDE_METHODS|INCLUDE_METADATA|INCLUDE_TRAITS|HIDE_OBJECT;

      public function describeType(param1:Object, param2:uint) : Object {
         return describeTypeJSON(param1,param2);
      }

      public function getInstanceDescription(param1:Class) : Object {
         return describeTypeJSON(param1,INSTANCE_FLAGS);
      }

      public function getClassDescription(param1:Class) : Object {
         return describeTypeJSON(param1,CLASS_FLAGS);
      }
   }
}