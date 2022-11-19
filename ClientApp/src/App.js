import { useEffect, useState } from "react";
import { Container, Row, Col, Card, CardHeader, CardBody, Button } from "reactstrap";
import ModalContacto from "./components/ModalContacto";
import TablaContacto from "./components/TablaContacto";

const App = () => {

    const [contactos, setContactos] = useState([]);
    const [mostrarModal, setMostrarModal] = useState(false);
    const [editar, setEditar] = useState(null);

    const mostrarConctatos = async () => {
        const response = await fetch("api/contacto/Lista");
        if (response.ok) {
            const data = await response.json();
            setContactos(data);
        } else {
            console.log("Error al obtener la lista");
        }
    };

    useEffect(() => {
        mostrarConctatos()
    }, []);

    const guardarContacto = async (contacto) => {
        const response = await fetch("api/contacto/Guardar", {
            method: 'POST',
            headers: { 'Content-Type': 'application/json;charset=utf-8' },
            body: JSON.stringify(contacto)
        });
        if (response.ok) {
            setMostrarModal(!mostrarModal);
            mostrarConctatos();
        }
    };

    const editarContacto = async (contacto) => {
        const response = await fetch("api/contacto/Editar", {
            method: 'PUT',
            headers: { 'Content-Type': 'application/json;charset=utf-8' },
            body: JSON.stringify(contacto)
        });
        if (response.ok) {
            setMostrarModal(!mostrarModal);
            mostrarConctatos();
        }
    };

    const eliminarContacto = async (id) => {
        var respuesta = window.confirm("Desea eliminar el contacto?");
        if (!respuesta) {
            return;
        }
        const response = await fetch("api/contacto/Eliminar/" + id, {
            method: 'DELETE'
        });
        if (response.ok) {
            mostrarConctatos();
        }
    };

    return (
        <Container>
            <Row ClassName="mt-5">
                <Col sm="12">
                    <Card>
                        <CardHeader>
                            <h5>Lista de Contactos</h5>
                        </CardHeader>
                        <CardBody>
                            <Button size="sm" color="success" onClick={() => setMostrarModal(!mostrarModal)}>Nuevo Contacto</Button>
                            <hr></hr>
                            <TablaContacto data={contactos} setEditar={setEditar} mostrarModal={mostrarModal} setMostrarModal={setMostrarModal} eliminarContacto={eliminarContacto} />
                        </CardBody>
                    </Card>
                </Col>
            </Row>
            <ModalContacto mostrarModal={mostrarModal} setMostrarModal={setMostrarModal} guardarContacto={guardarContacto} editar={editar} setEditar={setEditar} editarContacto={editarContacto} />
        </Container>
    )
}

export default App;