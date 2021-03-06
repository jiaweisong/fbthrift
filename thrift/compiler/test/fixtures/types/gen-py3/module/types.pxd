#
# Autogenerated by Thrift
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#  @generated
#

from libcpp.string cimport string
from libcpp cimport bool as cbool
from cpython cimport bool as pbool
from libc.stdint cimport int8_t, int16_t, int32_t, int64_t
from libcpp.memory cimport shared_ptr, unique_ptr
from libcpp.vector cimport vector
from libcpp.set cimport set as cset
from libcpp.map cimport map as cmap, pair as cpair
from thrift.py3.exceptions cimport cTException
cimport folly.iobuf as __iobuf
cimport thrift.py3.exceptions
cimport thrift.py3.types
from thrift.py3.types cimport bstring, move
from folly.optional cimport cOptional
cimport include.types as _include_types

cdef extern from * nogil:
    cdef cppclass std_unordered_map "std::unordered_map"[T, U]:
        ctypedef T key_type
        ctypedef U mapped_type
        ctypedef size_t size_type

        cppclass iterator:
            cpair[T, U]& operator*()
            iterator operator++()
            bint operator==(iterator)
            bint operator!=(iterator)
        cppclass reverse_iterator:
            cpair[T, U]& operator*()
            iterator operator++()
            bint operator==(reverse_iterator)
            bint operator!=(reverse_iterator)

        std_unordered_map() except +
        std_unordered_map(std_unordered_map&) except +

        U& operator[](T&)
        iterator find(const T&)
        size_type count(const T&)
        size_type size()
        iterator begin()
        iterator end()
        reverse_iterator rbegin()
        reverse_iterator rend()
        void clear()
        bint empty()

cdef extern from * nogil:
    cdef cppclass std_list "std::list"[T]:
        ctypedef T value_type
        ctypedef size_t size_type

        cppclass iterator:
            T& operator*()
            iterator operator++()
            bint operator==(iterator)
            bint operator!=(iterator)
        cppclass reverse_iterator:
            T& operator*()
            iterator operator++()
            bint operator==(reverse_iterator)
            bint operator!=(reverse_iterator)

        std_list() except +
        std_list(std_list&) except +

        T& operator[](size_type)
        void push_back(T&) except +
        size_type size()
        iterator begin()
        iterator end()
        reverse_iterator rbegin()
        reverse_iterator rend()
        void clear()
        bint empty()

cdef extern from * nogil:
    cdef cppclass std_deque "std::deque"[T]:
        ctypedef T value_type
        ctypedef size_t size_type

        cppclass iterator:
            T& operator*()
            iterator operator++()
            bint operator==(iterator)
            bint operator!=(iterator)
        cppclass reverse_iterator:
            T& operator*()
            iterator operator++()
            bint operator==(reverse_iterator)
            bint operator!=(reverse_iterator)

        std_deque() except +
        std_deque(std_deque&) except +

        T& operator[](size_type)
        void push_back(T&) except +
        size_type size()
        iterator begin()
        iterator end()
        reverse_iterator rbegin()
        reverse_iterator rend()
        void clear()
        bint empty()

cdef extern from * nogil:
    cdef cppclass folly_fbvector "folly::fbvector"[T]:
        ctypedef T value_type
        ctypedef size_t size_type

        cppclass iterator:
            T& operator*()
            iterator operator++()
            bint operator==(iterator)
            bint operator!=(iterator)
        cppclass reverse_iterator:
            T& operator*()
            iterator operator++()
            bint operator==(reverse_iterator)
            bint operator!=(reverse_iterator)

        folly_fbvector() except +
        folly_fbvector(folly_fbvector&) except +

        T& operator[](size_type)
        void push_back(T&) except +
        size_type size()
        iterator begin()
        iterator end()
        reverse_iterator rbegin()
        reverse_iterator rend()
        void clear()
        bint empty()

cdef extern from * nogil:
    cdef cppclass folly_small_vector "folly::small_vector"[T]:
        ctypedef T value_type
        ctypedef size_t size_type

        cppclass iterator:
            T& operator*()
            iterator operator++()
            bint operator==(iterator)
            bint operator!=(iterator)
        cppclass reverse_iterator:
            T& operator*()
            iterator operator++()
            bint operator==(reverse_iterator)
            bint operator!=(reverse_iterator)

        folly_small_vector() except +
        folly_small_vector(folly_small_vector&) except +

        T& operator[](size_type)
        void push_back(T&) except +
        size_type size()
        iterator begin()
        iterator end()
        reverse_iterator rbegin()
        reverse_iterator rend()
        void clear()
        bint empty()

cdef extern from * nogil:
    cdef cppclass folly_sorted_vector_set "folly::sorted_vector_set"[T]:
        ctypedef T value_type
        ctypedef size_t size_type

        cppclass iterator:
            T& operator*()
            iterator operator++()
            bint operator==(iterator)
            bint operator!=(iterator)
        cppclass reverse_iterator:
            T& operator*()
            iterator operator++()
            bint operator==(reverse_iterator)
            bint operator!=(reverse_iterator)

        folly_sorted_vector_set() except +
        folly_sorted_vector_set(folly_sorted_vector_set&) except +

        cpair[iterator, bint] insert(const T&) except +
        size_type size()
        size_type count(const T&)
        iterator begin()
        iterator end()
        reverse_iterator rbegin()
        reverse_iterator rend()
        void clear()
        bint empty()

cdef extern from * nogil:
    cdef cppclass folly_sorted_vector_map "folly::sorted_vector_map"[T, U]:
        ctypedef T key_type
        ctypedef U mapped_type
        ctypedef size_t size_type

        cppclass iterator:
            cpair[T, U]& operator*()
            iterator operator++()
            bint operator==(iterator)
            bint operator!=(iterator)
        cppclass reverse_iterator:
            cpair[T, U]& operator*()
            iterator operator++()
            bint operator==(reverse_iterator)
            bint operator!=(reverse_iterator)

        folly_sorted_vector_map() except +
        folly_sorted_vector_map(folly_sorted_vector_map&) except +

        U& operator[](T&)
        iterator find(const T&)
        size_type count(const T&)
        size_type size()
        iterator begin()
        iterator end()
        reverse_iterator rbegin()
        reverse_iterator rend()
        void clear()
        bint empty()

cdef extern from * nogil:
    cdef cppclass std_list_int32_t "std::list<int32_t>":
        ctypedef int32_t value_type
        ctypedef size_t size_type

        cppclass iterator:
            int32_t& operator*()
            iterator operator++()
            bint operator==(iterator)
            bint operator!=(iterator)
        cppclass reverse_iterator:
            int32_t& operator*()
            iterator operator++()
            bint operator==(reverse_iterator)
            bint operator!=(reverse_iterator)

        std_list_int32_t() except +
        std_list_int32_t(std_list_int32_t&) except +

        int32_t& operator[](size_type)
        void push_back(int32_t&) except +
        size_type size()
        iterator begin()
        iterator end()
        reverse_iterator rbegin()
        reverse_iterator rend()
        void clear()
        bint empty()


cdef extern from "src/gen-cpp2/module_types.h" namespace "apache::thrift::fixtures::types":
    cdef cppclass chas_bitwise_ops "apache::thrift::fixtures::types::has_bitwise_ops":
        bint operator==(chas_bitwise_ops&)
    chas_bitwise_ops has_bitwise_ops__none "apache::thrift::fixtures::types::has_bitwise_ops::none"
    chas_bitwise_ops has_bitwise_ops__zero "apache::thrift::fixtures::types::has_bitwise_ops::zero"
    chas_bitwise_ops has_bitwise_ops__one "apache::thrift::fixtures::types::has_bitwise_ops::one"
    chas_bitwise_ops has_bitwise_ops__two "apache::thrift::fixtures::types::has_bitwise_ops::two"
    chas_bitwise_ops has_bitwise_ops__three "apache::thrift::fixtures::types::has_bitwise_ops::three"
    cdef cppclass cis_unscoped "apache::thrift::fixtures::types::is_unscoped":
        bint operator==(cis_unscoped&)
    cis_unscoped is_unscoped__hello "apache::thrift::fixtures::types::is_unscoped::hello"
    cis_unscoped is_unscoped__world "apache::thrift::fixtures::types::is_unscoped::world"
    cdef cppclass cMyForwardRefEnum "apache::thrift::fixtures::types::MyForwardRefEnum":
        bint operator==(cMyForwardRefEnum&)
    cMyForwardRefEnum MyForwardRefEnum__ZERO "apache::thrift::fixtures::types::MyForwardRefEnum::ZERO"
    cMyForwardRefEnum MyForwardRefEnum__NONZERO "apache::thrift::fixtures::types::MyForwardRefEnum::NONZERO"




cdef class has_bitwise_ops(thrift.py3.types.CompiledEnum):
    pass


cdef chas_bitwise_ops has_bitwise_ops_to_cpp(has_bitwise_ops value)




cdef class is_unscoped(thrift.py3.types.CompiledEnum):
    pass


cdef cis_unscoped is_unscoped_to_cpp(is_unscoped value)




cdef class MyForwardRefEnum(thrift.py3.types.CompiledEnum):
    pass


cdef cMyForwardRefEnum MyForwardRefEnum_to_cpp(MyForwardRefEnum value)



cdef extern from "src/gen-cpp2/module_types_custom_protocol.h" namespace "apache::thrift::fixtures::types":
    # Forward Declaration
    cdef cppclass cdecorated_struct "apache::thrift::fixtures::types::decorated_struct"
    # Forward Declaration
    cdef cppclass cContainerStruct "apache::thrift::fixtures::types::ContainerStruct"
    # Forward Declaration
    cdef cppclass cCppTypeStruct "apache::thrift::fixtures::types::CppTypeStruct"
    # Forward Declaration
    cdef cppclass cVirtualStruct "apache::thrift::fixtures::types::VirtualStruct"
    # Forward Declaration
    cdef cppclass cMyStructWithForwardRefEnum "apache::thrift::fixtures::types::MyStructWithForwardRefEnum"
    # Forward Declaration
    cdef cppclass cTrivialNumeric "apache::thrift::fixtures::types::TrivialNumeric"
    # Forward Declaration
    cdef cppclass cTrivialNestedWithDefault "apache::thrift::fixtures::types::TrivialNestedWithDefault"
    # Forward Declaration
    cdef cppclass cComplexString "apache::thrift::fixtures::types::ComplexString"
    # Forward Declaration
    cdef cppclass cComplexNestedWithDefault "apache::thrift::fixtures::types::ComplexNestedWithDefault"
    # Forward Declaration
    cdef cppclass cMinPadding "apache::thrift::fixtures::types::MinPadding"

cdef extern from "src/gen-cpp2/module_types.h" namespace "apache::thrift::fixtures::types":
    cdef cppclass cdecorated_struct__isset "apache::thrift::fixtures::types::decorated_struct::__isset":
        bint field

    cdef cppclass cdecorated_struct "apache::thrift::fixtures::types::decorated_struct":
        cdecorated_struct() except +
        cdecorated_struct(const cdecorated_struct&) except +
        bint operator==(cdecorated_struct&)
        string field
        cdecorated_struct__isset __isset

    cdef cppclass cContainerStruct__isset "apache::thrift::fixtures::types::ContainerStruct::__isset":
        bint fieldA
        bint fieldB
        bint fieldC
        bint fieldD
        bint fieldE
        bint fieldF
        bint fieldG
        bint fieldH

    cdef cppclass cContainerStruct "apache::thrift::fixtures::types::ContainerStruct":
        cContainerStruct() except +
        cContainerStruct(const cContainerStruct&) except +
        bint operator==(cContainerStruct&)
        vector[int32_t] fieldA
        std_list[int32_t] fieldB
        std_deque[int32_t] fieldC
        folly_fbvector[int32_t] fieldD
        folly_small_vector[int32_t] fieldE
        folly_sorted_vector_set[int32_t] fieldF
        folly_sorted_vector_map[int32_t,string] fieldG
        std_unordered_map[int32_t,string] fieldH
        cContainerStruct__isset __isset

    cdef cppclass cCppTypeStruct__isset "apache::thrift::fixtures::types::CppTypeStruct::__isset":
        bint fieldA

    cdef cppclass cCppTypeStruct "apache::thrift::fixtures::types::CppTypeStruct":
        cCppTypeStruct() except +
        cCppTypeStruct(const cCppTypeStruct&) except +
        bint operator==(cCppTypeStruct&)
        std_list_int32_t fieldA
        cCppTypeStruct__isset __isset

    cdef cppclass cVirtualStruct__isset "apache::thrift::fixtures::types::VirtualStruct::__isset":
        bint MyIntField

    cdef cppclass cVirtualStruct "apache::thrift::fixtures::types::VirtualStruct":
        cVirtualStruct() except +
        cVirtualStruct(const cVirtualStruct&) except +
        bint operator==(cVirtualStruct&)
        int64_t MyIntField
        cVirtualStruct__isset __isset

    cdef cppclass cMyStructWithForwardRefEnum__isset "apache::thrift::fixtures::types::MyStructWithForwardRefEnum::__isset":
        bint a
        bint b

    cdef cppclass cMyStructWithForwardRefEnum "apache::thrift::fixtures::types::MyStructWithForwardRefEnum":
        cMyStructWithForwardRefEnum() except +
        cMyStructWithForwardRefEnum(const cMyStructWithForwardRefEnum&) except +
        bint operator==(cMyStructWithForwardRefEnum&)
        cMyForwardRefEnum a
        cMyForwardRefEnum b
        cMyStructWithForwardRefEnum__isset __isset

    cdef cppclass cTrivialNumeric__isset "apache::thrift::fixtures::types::TrivialNumeric::__isset":
        bint a
        bint b

    cdef cppclass cTrivialNumeric "apache::thrift::fixtures::types::TrivialNumeric":
        cTrivialNumeric() except +
        cTrivialNumeric(const cTrivialNumeric&) except +
        bint operator==(cTrivialNumeric&)
        int32_t a
        cbool b
        cTrivialNumeric__isset __isset

    cdef cppclass cTrivialNestedWithDefault__isset "apache::thrift::fixtures::types::TrivialNestedWithDefault::__isset":
        bint z
        bint n

    cdef cppclass cTrivialNestedWithDefault "apache::thrift::fixtures::types::TrivialNestedWithDefault":
        cTrivialNestedWithDefault() except +
        cTrivialNestedWithDefault(const cTrivialNestedWithDefault&) except +
        bint operator==(cTrivialNestedWithDefault&)
        int32_t z
        cTrivialNumeric n
        cTrivialNestedWithDefault__isset __isset

    cdef cppclass cComplexString__isset "apache::thrift::fixtures::types::ComplexString::__isset":
        bint a
        bint b

    cdef cppclass cComplexString "apache::thrift::fixtures::types::ComplexString":
        cComplexString() except +
        cComplexString(const cComplexString&) except +
        bint operator==(cComplexString&)
        string a
        cmap[string,int32_t] b
        cComplexString__isset __isset

    cdef cppclass cComplexNestedWithDefault__isset "apache::thrift::fixtures::types::ComplexNestedWithDefault::__isset":
        bint z
        bint n

    cdef cppclass cComplexNestedWithDefault "apache::thrift::fixtures::types::ComplexNestedWithDefault":
        cComplexNestedWithDefault() except +
        cComplexNestedWithDefault(const cComplexNestedWithDefault&) except +
        bint operator==(cComplexNestedWithDefault&)
        string z
        cComplexString n
        cComplexNestedWithDefault__isset __isset

    cdef cppclass cMinPadding__isset "apache::thrift::fixtures::types::MinPadding::__isset":
        bint small
        bint big
        bint medium
        bint biggish
        bint tiny

    cdef cppclass cMinPadding "apache::thrift::fixtures::types::MinPadding":
        cMinPadding() except +
        cMinPadding(const cMinPadding&) except +
        bint operator==(cMinPadding&)
        int8_t small
        int64_t big
        int16_t medium
        int32_t biggish
        int8_t tiny
        cMinPadding__isset __isset


cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[cdecorated_struct] move(unique_ptr[cdecorated_struct])
    cdef shared_ptr[cdecorated_struct] move_shared "std::move"(shared_ptr[cdecorated_struct])
    cdef unique_ptr[cdecorated_struct] move_unique "std::move"(unique_ptr[cdecorated_struct])
    cdef shared_ptr[cContainerStruct] move(unique_ptr[cContainerStruct])
    cdef shared_ptr[cContainerStruct] move_shared "std::move"(shared_ptr[cContainerStruct])
    cdef unique_ptr[cContainerStruct] move_unique "std::move"(unique_ptr[cContainerStruct])
    cdef shared_ptr[cCppTypeStruct] move(unique_ptr[cCppTypeStruct])
    cdef shared_ptr[cCppTypeStruct] move_shared "std::move"(shared_ptr[cCppTypeStruct])
    cdef unique_ptr[cCppTypeStruct] move_unique "std::move"(unique_ptr[cCppTypeStruct])
    cdef shared_ptr[cVirtualStruct] move(unique_ptr[cVirtualStruct])
    cdef shared_ptr[cVirtualStruct] move_shared "std::move"(shared_ptr[cVirtualStruct])
    cdef unique_ptr[cVirtualStruct] move_unique "std::move"(unique_ptr[cVirtualStruct])
    cdef shared_ptr[cMyStructWithForwardRefEnum] move(unique_ptr[cMyStructWithForwardRefEnum])
    cdef shared_ptr[cMyStructWithForwardRefEnum] move_shared "std::move"(shared_ptr[cMyStructWithForwardRefEnum])
    cdef unique_ptr[cMyStructWithForwardRefEnum] move_unique "std::move"(unique_ptr[cMyStructWithForwardRefEnum])
    cdef shared_ptr[cTrivialNumeric] move(unique_ptr[cTrivialNumeric])
    cdef shared_ptr[cTrivialNumeric] move_shared "std::move"(shared_ptr[cTrivialNumeric])
    cdef unique_ptr[cTrivialNumeric] move_unique "std::move"(unique_ptr[cTrivialNumeric])
    cdef shared_ptr[cTrivialNestedWithDefault] move(unique_ptr[cTrivialNestedWithDefault])
    cdef shared_ptr[cTrivialNestedWithDefault] move_shared "std::move"(shared_ptr[cTrivialNestedWithDefault])
    cdef unique_ptr[cTrivialNestedWithDefault] move_unique "std::move"(unique_ptr[cTrivialNestedWithDefault])
    cdef shared_ptr[cComplexString] move(unique_ptr[cComplexString])
    cdef shared_ptr[cComplexString] move_shared "std::move"(shared_ptr[cComplexString])
    cdef unique_ptr[cComplexString] move_unique "std::move"(unique_ptr[cComplexString])
    cdef shared_ptr[cComplexNestedWithDefault] move(unique_ptr[cComplexNestedWithDefault])
    cdef shared_ptr[cComplexNestedWithDefault] move_shared "std::move"(shared_ptr[cComplexNestedWithDefault])
    cdef unique_ptr[cComplexNestedWithDefault] move_unique "std::move"(unique_ptr[cComplexNestedWithDefault])
    cdef shared_ptr[cMinPadding] move(unique_ptr[cMinPadding])
    cdef shared_ptr[cMinPadding] move_shared "std::move"(shared_ptr[cMinPadding])
    cdef unique_ptr[cMinPadding] move_unique "std::move"(unique_ptr[cMinPadding])

cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const cdecorated_struct] const_pointer_cast "std::const_pointer_cast<const apache::thrift::fixtures::types::decorated_struct>"(shared_ptr[cdecorated_struct])
    cdef shared_ptr[const cContainerStruct] const_pointer_cast "std::const_pointer_cast<const apache::thrift::fixtures::types::ContainerStruct>"(shared_ptr[cContainerStruct])
    cdef shared_ptr[const cCppTypeStruct] const_pointer_cast "std::const_pointer_cast<const apache::thrift::fixtures::types::CppTypeStruct>"(shared_ptr[cCppTypeStruct])
    cdef shared_ptr[const cVirtualStruct] const_pointer_cast "std::const_pointer_cast<const apache::thrift::fixtures::types::VirtualStruct>"(shared_ptr[cVirtualStruct])
    cdef shared_ptr[const cMyStructWithForwardRefEnum] const_pointer_cast "std::const_pointer_cast<const apache::thrift::fixtures::types::MyStructWithForwardRefEnum>"(shared_ptr[cMyStructWithForwardRefEnum])
    cdef shared_ptr[const cTrivialNumeric] const_pointer_cast "std::const_pointer_cast<const apache::thrift::fixtures::types::TrivialNumeric>"(shared_ptr[cTrivialNumeric])
    cdef shared_ptr[const cTrivialNestedWithDefault] const_pointer_cast "std::const_pointer_cast<const apache::thrift::fixtures::types::TrivialNestedWithDefault>"(shared_ptr[cTrivialNestedWithDefault])
    cdef shared_ptr[const cComplexString] const_pointer_cast "std::const_pointer_cast<const apache::thrift::fixtures::types::ComplexString>"(shared_ptr[cComplexString])
    cdef shared_ptr[const cComplexNestedWithDefault] const_pointer_cast "std::const_pointer_cast<const apache::thrift::fixtures::types::ComplexNestedWithDefault>"(shared_ptr[cComplexNestedWithDefault])
    cdef shared_ptr[const cMinPadding] const_pointer_cast "std::const_pointer_cast<const apache::thrift::fixtures::types::MinPadding>"(shared_ptr[cMinPadding])

# Forward Definition of the cython struct
cdef class decorated_struct(thrift.py3.types.Struct)


cdef class decorated_struct(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cdecorated_struct] _cpp_obj

    @staticmethod
    cdef unique_ptr[cdecorated_struct] _make_instance(
        cdecorated_struct* base_instance,
        object field
    ) except *

    @staticmethod
    cdef create(shared_ptr[cdecorated_struct])

# Forward Definition of the cython struct
cdef class ContainerStruct(thrift.py3.types.Struct)


cdef class ContainerStruct(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cContainerStruct] _cpp_obj
    cdef List__i32 __fieldA
    cdef std_list__List__i32 __fieldB
    cdef std_deque__List__i32 __fieldC
    cdef folly_fbvector__List__i32 __fieldD
    cdef folly_small_vector__List__i32 __fieldE
    cdef folly_sorted_vector_set__Set__i32 __fieldF
    cdef folly_sorted_vector_map__Map__i32_string __fieldG
    cdef std_unordered_map__Map__i32_string __fieldH

    @staticmethod
    cdef unique_ptr[cContainerStruct] _make_instance(
        cContainerStruct* base_instance,
        object fieldA,
        object fieldB,
        object fieldC,
        object fieldD,
        object fieldE,
        object fieldF,
        object fieldG,
        object fieldH
    ) except *

    @staticmethod
    cdef create(shared_ptr[cContainerStruct])

# Forward Definition of the cython struct
cdef class CppTypeStruct(thrift.py3.types.Struct)


cdef class CppTypeStruct(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cCppTypeStruct] _cpp_obj
    cdef std_list_int32_t__List__i32 __fieldA

    @staticmethod
    cdef unique_ptr[cCppTypeStruct] _make_instance(
        cCppTypeStruct* base_instance,
        object fieldA
    ) except *

    @staticmethod
    cdef create(shared_ptr[cCppTypeStruct])

# Forward Definition of the cython struct
cdef class VirtualStruct(thrift.py3.types.Struct)


cdef class VirtualStruct(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cVirtualStruct] _cpp_obj

    @staticmethod
    cdef unique_ptr[cVirtualStruct] _make_instance(
        cVirtualStruct* base_instance,
        object MyIntField
    ) except *

    @staticmethod
    cdef create(shared_ptr[cVirtualStruct])

# Forward Definition of the cython struct
cdef class MyStructWithForwardRefEnum(thrift.py3.types.Struct)


cdef class MyStructWithForwardRefEnum(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cMyStructWithForwardRefEnum] _cpp_obj

    @staticmethod
    cdef unique_ptr[cMyStructWithForwardRefEnum] _make_instance(
        cMyStructWithForwardRefEnum* base_instance,
        object a,
        object b
    ) except *

    @staticmethod
    cdef create(shared_ptr[cMyStructWithForwardRefEnum])

# Forward Definition of the cython struct
cdef class TrivialNumeric(thrift.py3.types.Struct)


cdef class TrivialNumeric(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cTrivialNumeric] _cpp_obj

    @staticmethod
    cdef unique_ptr[cTrivialNumeric] _make_instance(
        cTrivialNumeric* base_instance,
        object a,
        object b
    ) except *

    @staticmethod
    cdef create(shared_ptr[cTrivialNumeric])

# Forward Definition of the cython struct
cdef class TrivialNestedWithDefault(thrift.py3.types.Struct)


cdef class TrivialNestedWithDefault(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cTrivialNestedWithDefault] _cpp_obj
    cdef TrivialNumeric __n

    @staticmethod
    cdef unique_ptr[cTrivialNestedWithDefault] _make_instance(
        cTrivialNestedWithDefault* base_instance,
        object z,
        object n
    ) except *

    @staticmethod
    cdef create(shared_ptr[cTrivialNestedWithDefault])

# Forward Definition of the cython struct
cdef class ComplexString(thrift.py3.types.Struct)


cdef class ComplexString(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cComplexString] _cpp_obj
    cdef Map__string_i32 __b

    @staticmethod
    cdef unique_ptr[cComplexString] _make_instance(
        cComplexString* base_instance,
        object a,
        object b
    ) except *

    @staticmethod
    cdef create(shared_ptr[cComplexString])

# Forward Definition of the cython struct
cdef class ComplexNestedWithDefault(thrift.py3.types.Struct)


cdef class ComplexNestedWithDefault(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cComplexNestedWithDefault] _cpp_obj
    cdef ComplexString __n

    @staticmethod
    cdef unique_ptr[cComplexNestedWithDefault] _make_instance(
        cComplexNestedWithDefault* base_instance,
        object z,
        object n
    ) except *

    @staticmethod
    cdef create(shared_ptr[cComplexNestedWithDefault])

# Forward Definition of the cython struct
cdef class MinPadding(thrift.py3.types.Struct)


cdef class MinPadding(thrift.py3.types.Struct):
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cMinPadding] _cpp_obj

    @staticmethod
    cdef unique_ptr[cMinPadding] _make_instance(
        cMinPadding* base_instance,
        object small,
        object big,
        object medium,
        object biggish,
        object tiny
    ) except *

    @staticmethod
    cdef create(shared_ptr[cMinPadding])


cdef class std_unordered_map__Map__i32_string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[std_unordered_map[int32_t,string]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[std_unordered_map[int32_t,string]])
    @staticmethod
    cdef unique_ptr[std_unordered_map[int32_t,string]] _make_instance(object items) except *

cdef class List__i64:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[int64_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[int64_t]])
    @staticmethod
    cdef unique_ptr[vector[int64_t]] _make_instance(object items) except *

cdef class Map__binary_i64:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[string,int64_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[string,int64_t]])
    @staticmethod
    cdef unique_ptr[cmap[string,int64_t]] _make_instance(object items) except *

cdef class List__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[vector[int32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[vector[int32_t]])
    @staticmethod
    cdef unique_ptr[vector[int32_t]] _make_instance(object items) except *

cdef class std_list__List__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[std_list[int32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[std_list[int32_t]])
    @staticmethod
    cdef unique_ptr[std_list[int32_t]] _make_instance(object items) except *

cdef class std_deque__List__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[std_deque[int32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[std_deque[int32_t]])
    @staticmethod
    cdef unique_ptr[std_deque[int32_t]] _make_instance(object items) except *

cdef class folly_fbvector__List__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[folly_fbvector[int32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[folly_fbvector[int32_t]])
    @staticmethod
    cdef unique_ptr[folly_fbvector[int32_t]] _make_instance(object items) except *

cdef class folly_small_vector__List__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[folly_small_vector[int32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[folly_small_vector[int32_t]])
    @staticmethod
    cdef unique_ptr[folly_small_vector[int32_t]] _make_instance(object items) except *

cdef class folly_sorted_vector_set__Set__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[folly_sorted_vector_set[int32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[folly_sorted_vector_set[int32_t]])
    @staticmethod
    cdef unique_ptr[folly_sorted_vector_set[int32_t]] _make_instance(object items) except *

cdef class folly_sorted_vector_map__Map__i32_string:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[folly_sorted_vector_map[int32_t,string]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[folly_sorted_vector_map[int32_t,string]])
    @staticmethod
    cdef unique_ptr[folly_sorted_vector_map[int32_t,string]] _make_instance(object items) except *

cdef class std_list_int32_t__List__i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[std_list_int32_t] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[std_list_int32_t])
    @staticmethod
    cdef unique_ptr[std_list_int32_t] _make_instance(object items) except *

cdef class Map__string_i32:
    cdef object __hash
    cdef object __weakref__
    cdef shared_ptr[cmap[string,int32_t]] _cpp_obj
    @staticmethod
    cdef create(shared_ptr[cmap[string,int32_t]])
    @staticmethod
    cdef unique_ptr[cmap[string,int32_t]] _make_instance(object items) except *

cdef extern from "<utility>" namespace "std" nogil:
    cdef shared_ptr[std_unordered_map[int32_t,string]] move(unique_ptr[std_unordered_map[int32_t,string]])
    cdef unique_ptr[std_unordered_map[int32_t,string]] move_unique "std::move"(unique_ptr[std_unordered_map[int32_t,string]])
    cdef shared_ptr[vector[int64_t]] move(unique_ptr[vector[int64_t]])
    cdef unique_ptr[vector[int64_t]] move_unique "std::move"(unique_ptr[vector[int64_t]])
    cdef shared_ptr[cmap[string,int64_t]] move(unique_ptr[cmap[string,int64_t]])
    cdef unique_ptr[cmap[string,int64_t]] move_unique "std::move"(unique_ptr[cmap[string,int64_t]])
    cdef shared_ptr[vector[int32_t]] move(unique_ptr[vector[int32_t]])
    cdef unique_ptr[vector[int32_t]] move_unique "std::move"(unique_ptr[vector[int32_t]])
    cdef shared_ptr[std_list[int32_t]] move(unique_ptr[std_list[int32_t]])
    cdef unique_ptr[std_list[int32_t]] move_unique "std::move"(unique_ptr[std_list[int32_t]])
    cdef shared_ptr[std_deque[int32_t]] move(unique_ptr[std_deque[int32_t]])
    cdef unique_ptr[std_deque[int32_t]] move_unique "std::move"(unique_ptr[std_deque[int32_t]])
    cdef shared_ptr[folly_fbvector[int32_t]] move(unique_ptr[folly_fbvector[int32_t]])
    cdef unique_ptr[folly_fbvector[int32_t]] move_unique "std::move"(unique_ptr[folly_fbvector[int32_t]])
    cdef shared_ptr[folly_small_vector[int32_t]] move(unique_ptr[folly_small_vector[int32_t]])
    cdef unique_ptr[folly_small_vector[int32_t]] move_unique "std::move"(unique_ptr[folly_small_vector[int32_t]])
    cdef shared_ptr[folly_sorted_vector_set[int32_t]] move(unique_ptr[folly_sorted_vector_set[int32_t]])
    cdef unique_ptr[folly_sorted_vector_set[int32_t]] move_unique "std::move"(unique_ptr[folly_sorted_vector_set[int32_t]])
    cdef shared_ptr[folly_sorted_vector_map[int32_t,string]] move(unique_ptr[folly_sorted_vector_map[int32_t,string]])
    cdef unique_ptr[folly_sorted_vector_map[int32_t,string]] move_unique "std::move"(unique_ptr[folly_sorted_vector_map[int32_t,string]])
    cdef shared_ptr[std_list_int32_t] move(unique_ptr[std_list_int32_t])
    cdef unique_ptr[std_list_int32_t] move_unique "std::move"(unique_ptr[std_list_int32_t])
    cdef shared_ptr[cmap[string,int32_t]] move(unique_ptr[cmap[string,int32_t]])
    cdef unique_ptr[cmap[string,int32_t]] move_unique "std::move"(unique_ptr[cmap[string,int32_t]])
cdef extern from "<memory>" namespace "std" nogil:
    cdef shared_ptr[const std_unordered_map[int32_t,string]] const_pointer_cast "std::const_pointer_cast<const std::unordered_map<int32_t,std::string>>"(shared_ptr[std_unordered_map[int32_t,string]])

    cdef shared_ptr[const vector[int64_t]] const_pointer_cast "std::const_pointer_cast<const std::vector<int64_t>>"(shared_ptr[vector[int64_t]])

    cdef shared_ptr[const cmap[string,int64_t]] const_pointer_cast "std::const_pointer_cast<const std::map<std::string,int64_t>>"(shared_ptr[cmap[string,int64_t]])

    cdef shared_ptr[const vector[int32_t]] const_pointer_cast "std::const_pointer_cast<const std::vector<int32_t>>"(shared_ptr[vector[int32_t]])

    cdef shared_ptr[const std_list[int32_t]] const_pointer_cast "std::const_pointer_cast<const std::list<int32_t>>"(shared_ptr[std_list[int32_t]])

    cdef shared_ptr[const std_deque[int32_t]] const_pointer_cast "std::const_pointer_cast<const std::deque<int32_t>>"(shared_ptr[std_deque[int32_t]])

    cdef shared_ptr[const folly_fbvector[int32_t]] const_pointer_cast "std::const_pointer_cast<const folly::fbvector<int32_t>>"(shared_ptr[folly_fbvector[int32_t]])

    cdef shared_ptr[const folly_small_vector[int32_t]] const_pointer_cast "std::const_pointer_cast<const folly::small_vector<int32_t>>"(shared_ptr[folly_small_vector[int32_t]])

    cdef shared_ptr[const folly_sorted_vector_set[int32_t]] const_pointer_cast "std::const_pointer_cast<const folly::sorted_vector_set<int32_t>>"(shared_ptr[folly_sorted_vector_set[int32_t]])

    cdef shared_ptr[const folly_sorted_vector_map[int32_t,string]] const_pointer_cast "std::const_pointer_cast<const folly::sorted_vector_map<int32_t,std::string>>"(shared_ptr[folly_sorted_vector_map[int32_t,string]])

    cdef shared_ptr[const std_list_int32_t] const_pointer_cast "std::const_pointer_cast<const std::list<int32_t>>"(shared_ptr[std_list_int32_t])

    cdef shared_ptr[const cmap[string,int32_t]] const_pointer_cast "std::const_pointer_cast<const std::map<std::string,int32_t>>"(shared_ptr[cmap[string,int32_t]])

